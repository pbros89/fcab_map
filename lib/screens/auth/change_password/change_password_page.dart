import 'package:fcab_map/screens/base_screen.dart';
import 'package:fcab_map/widgets/menu/accesibility_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../../bloc/auth/change_password/change_password_bloc.dart';
import '../../../enums/type_message.dart';
import '../../../widgets/loading_dialog.dart';
import '../../../widgets/message_dialog.dart';

class ChangePasswordPage extends StatelessWidget {
  ChangePasswordPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormBuilderState>();
  final _scaKey = GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaKey,
      appBar: AppBar(actions: [AccebilityMenu()],),
      body: BaseScreen(
        child: Stack(
          children: [
            Center(
              child: SingleChildScrollView(
                child: SizedBox(
                  width: 350,
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
                            const CircleAvatar(
                                  radius: 50,
                                  child: Icon(
                                    Icons.map,
                                    size: 50,
                                  ),
                                ),
                            const SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '¿Olvidaste tu contraseña?',
                                  softWrap: true,
                                  style: Theme.of(context).textTheme.titleMedium,
                                ),
                              ],
                            ),
                            const SizedBox(height: 20,),
                            Text(
                              'Ingresa tu usuario para que se te envie una nueva contraseña al correo asociado.',
                              softWrap: true,
                              style: Theme.of(context).textTheme.caption,
                            ),
                            const SizedBox(height: 20,),
                            FormBuilderTextField(
                              name: 'txtUsername',
                              decoration: const InputDecoration(
                                labelText: 'Usuario',
                              ),
                              keyboardType: TextInputType.number,
                              validator: FormBuilderValidators.compose([
                                FormBuilderValidators.required(
                                    errorText: 'Usuario es requerido'),
                                FormBuilderValidators.maxLength(100,
                                    errorText:
                                        'No puede superar los 100 caracteres'),
                              ]),
                            ),
                            const SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                
                                ElevatedButton(
                                    onPressed: () => _onSubmit(context),
                                    child: const Text('Generar Contraseña'))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            BlocBuilder<ChangePasswordBloc, ChangePasswordState>(
              builder: (context, state) {
  
                  if (state is ChangePasswordLoading) {
                    return const LoadingDialog();
                  }

                  if(state is ChangePasswordSuccess){
                    return MessageDialog(
                      typeMessage: TypeMessage.success, 
                      message: 'La nueva contraseña se ha enviado al correo ${state.usuario.email}', 
                      aceptarClick: _onSuccess,);
                  }

                  if (state is ChangePasswordError) {
                    return MessageDialog(
                      typeMessage: TypeMessage.error,
                      message: state.message,
                      aceptarClick: _onError,
                    );
                  }

                  return const SizedBox(width: 0, height: 0,);
                  
                })
              
            
          ],
        ),
      ),
    );
  }

  _onSubmit(BuildContext context) {
    final provider = BlocProvider.of<ChangePasswordBloc>(context);
    _formKey.currentState?.validate();
    if (_formKey.currentState?.isValid ?? false) {
      final fields = _formKey.currentState?.fields ?? {};
      print(fields);
      provider.add(ChangePasswordSubmitEvent(
          fields['txtUsername']?.value,));
    }
  }

  _onSuccess(BuildContext context) {
    final provider = BlocProvider.of<ChangePasswordBloc>(context);
    provider.add(ChangePasswordInitEvent());
    Navigator.of(context).pop();
  }

  _onError(BuildContext context) {
    final provider = BlocProvider.of<ChangePasswordBloc>(context);
    provider.add(ChangePasswordInitEvent());
  }
}
