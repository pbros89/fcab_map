
import 'package:fcab_map/bloc/user/create_user/create_user_bloc.dart';
import 'package:fcab_map/constants/list_estados_usuarios.dart';
import 'package:fcab_map/enums/type_message.dart';
import 'package:fcab_map/widgets/loading_dialog.dart';
import 'package:fcab_map/widgets/message_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class UserCreateForm extends StatefulWidget {
  const UserCreateForm({Key? key}) : super(key: key);

  @override
  State<UserCreateForm> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<UserCreateForm> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  void initState() {
    super.initState();
    final provider = BlocProvider.of<CreateUserBloc>(context);
    provider.add(CreateUserInitEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: SizedBox(
            width: 400,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: FormBuilder(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Crear Usuario', style: Theme.of(context).textTheme.titleLarge,),
                          IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.clear), tooltip: 'Cerrar',)
                        ],
                      ),
                      const SizedBox(height: 10,),
                      FormBuilderTextField(
                        name: 'txtRut',
                        decoration: const InputDecoration(
                          labelText: 'Rut',
                        ),
                        keyboardType: TextInputType.number,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                              errorText: 'Rut requerido'),
                          FormBuilderValidators.min( 1111111,
                              errorText: 'Rut incorrecto'),
                          FormBuilderValidators.max( 99999999,
                              errorText: 'Rut incorrecto'),
                        ]),
                      ),
                      const SizedBox(height: 10,),
                      FormBuilderTextField(
                        name: 'txtNombre',
                        decoration: const InputDecoration(
                          labelText: 'Nombre',
                        ),
                        keyboardType: TextInputType.text,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                              errorText: 'Nombre es requerida'),
                          FormBuilderValidators.maxLength(100,
                              errorText: 'No puede superar los 100 caracteres'),
                        ]),
                      ),
                      const SizedBox(height: 10,),
                      FormBuilderTextField(
                        name: 'txtCuenta',
                        decoration: const InputDecoration(
                          labelText: 'Cuenta',
                        ),
                        keyboardType: TextInputType.text,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                              errorText: 'Cuenta es requerida'),
                          FormBuilderValidators.maxLength(100,
                              errorText: 'No puede superar los 100 caracteres'),
                        ]),
                      ),
                      const SizedBox(height: 10,),
                      FormBuilderTextField(
                        name: 'txtPassword',
                        decoration: const InputDecoration(
                          labelText: 'Clave',
                        ),
                        keyboardType: TextInputType.text,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                              errorText: 'Clave es requerida'),
                          FormBuilderValidators.maxLength(100,
                              errorText: 'No puede superar los 100 caracteres'),
                        ]),
                      ),
                      const SizedBox(height: 10,),
                      FormBuilderTextField(
                        name: 'txtCorreo',
                        decoration: const InputDecoration(
                          labelText: 'Correo',
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                              errorText: 'Email es requerido'),
                          FormBuilderValidators.maxLength(500,
                              errorText: 'No puede superar los 500 caracteres'),
                          FormBuilderValidators.email(
                              errorText: 'Formato incorrecto'),
                        ]),
                      ),
                      const SizedBox(height: 10,),
                      FormBuilderDropdown(
                        name: 'cmbEstado',
                        decoration: const InputDecoration(
                          labelText: 'Estado',
                        ),
                        initialValue: listEstadosUsuarios[0],
                        allowClear: true,
                        hint: const Text('Seleccione Estado'),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                              errorText: 'Estado es requerido')
                        ]),
                        items: listEstadosUsuarios
                            .map((estado) => DropdownMenuItem(
                                  value: estado,
                                  child: Text(estado),
                                ))
                            .toList(),
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                              onPressed: _onSubmit, child: const Text('Crear Usuario'))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),

        BlocBuilder<CreateUserBloc, CreateUserState>(builder: ((context, state) {
          if(state is CreateUserLoading){
            return const LoadingDialog();
          }
          if(state is CreateUserSuccess){
            return MessageDialog(typeMessage: TypeMessage.success, message: 'Usuario creado correctamente', aceptarClick: _onSuccess,);
          }

          if(state is CreateUserError){
            return MessageDialog(typeMessage: TypeMessage.error, message: state.message, aceptarClick: _onError,);
          }
          return const SizedBox(height: 0, width: 0,);
        }))
      ],
    );
  }

  _onSubmit() {
    final provider = BlocProvider.of<CreateUserBloc>(context);
    _formKey.currentState?.validate();
    if (_formKey.currentState?.isValid ?? false) {
      final fields = _formKey.currentState?.fields ?? {};
      provider.add(CreateUserSubmitEvent(
        fields['txtCuenta'].toString(),
        fields['txtCorreo'].toString(), 
        fields['cmbEstado'].toString(),
        int.parse(fields['txtRut'].toString()),
        fields['txtNombre'].toString(),
        fields['txtPassword'].toString()));
    }
  }

  _onSuccess(BuildContext context) {
    final provider = BlocProvider.of<CreateUserBloc>(context);
    provider.add(CreateUserInitEvent());
    Navigator.of(context).pop();
  }

  _onError(BuildContext context) {
    final provider = BlocProvider.of<CreateUserBloc>(context);
    provider.add(CreateUserInitEvent());
  }
}
