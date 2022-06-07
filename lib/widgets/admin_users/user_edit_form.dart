
import 'package:fcab_map/constants/list_estados_usuarios.dart';
import 'package:fcab_map/enums/type_message.dart';
import 'package:fcab_map/widgets/loading_dialog.dart';
import 'package:fcab_map/widgets/message_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../bloc/user/edit_user/edit_user_bloc.dart';
import '../../models/usuario.dart';

class UserEditForm extends StatelessWidget {
  
  final _formKey = GlobalKey<FormBuilderState>();
  final Usuario usuario ;

  UserEditForm({Key? key, required this.usuario}) : super(key: key);

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
                          Text('Editar Usuario', style: Theme.of(context).textTheme.titleLarge,),
                          IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.clear), tooltip: 'Cerrar',)
                        ],
                      ),
                      const SizedBox(height: 10,),
                      FormBuilderTextField(
                        name: 'txtUsuario',
                        decoration: const InputDecoration(
                          labelText: 'Usuario',
                        ),
                        readOnly: true,
                        keyboardType: TextInputType.number,
                        initialValue: usuario.usuario,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                              errorText: 'Usuario es requerido'),
                          FormBuilderValidators.maxLength(100,
                              errorText: 'No puede superar los 100 caracteres'),
                        ]),
                      ),
                      const SizedBox(height: 10,),
                      FormBuilderTextField(
                        name: 'txtEmail',
                        decoration: const InputDecoration(
                          labelText: 'Email',
                        ),
                        keyboardType: TextInputType.number,
                        initialValue: usuario.email,
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
                        initialValue: usuario.estado,
                        allowClear: true,
                        hint: const Text('Seleccione Estado'),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                              errorText: 'Estado es requerido')
                        ]),
                        items: listEstadosUsuarios
                            .map((estado) => DropdownMenuItem(
                                  value: estado,
                                  child: Text('$estado'),
                                ))
                            .toList(),
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                              onPressed: () => _onSubmit(context), child: const Text('Editar Usuario'))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),

        BlocBuilder<EditUserBloc, EditUserState>(builder: ((context, state) {
          if(state is EditUserLoading){
            return const LoadingDialog();
          }
          if(state is EditUserSuccess){
            return MessageDialog(typeMessage: TypeMessage.success, message: 'Usuario editado correctamente', aceptarClick: _onSuccess,);
          }

          if(state is EditUserError){
            return MessageDialog(typeMessage: TypeMessage.error, message: state.message, aceptarClick: _onError,);
          }
          return const SizedBox(height: 0, width: 0,);
        }))
      ],
    );
  }

  _onSubmit(BuildContext context) {
    final provider = BlocProvider.of<EditUserBloc>(context);
    _formKey.currentState?.validate();
    if (_formKey.currentState?.isValid ?? false) {
      final fields = _formKey.currentState?.fields ?? {};

      Usuario usuarioEdit = usuario.copyWith(
        email: fields['txtEmail'].toString(),
        estado: fields['cmbEstado'].toString(),);

      provider.add(EditUserSubmitEvent(usuarioEdit));
    }
  }

  _onSuccess(BuildContext context) {
    final provider = BlocProvider.of<EditUserBloc>(context);
    provider.add(EditUserInitEvent(usuario));
    Navigator.of(context).pop();
  }

  _onError(BuildContext context) {
    final provider = BlocProvider.of<EditUserBloc>(context);
    provider.add(EditUserInitEvent(usuario));
  }
}
