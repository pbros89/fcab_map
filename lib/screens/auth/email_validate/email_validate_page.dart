import 'package:auto_route/auto_route.dart';
import 'package:fcab_map/bloc/auth/clave_secret/clave_secret_bloc.dart';
import 'package:fcab_map/bloc/global_setting/global_setting_bloc.dart';
import 'package:fcab_map/screens/base_screen.dart';
import 'package:fcab_map/widgets/menu/accesibility_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../../enums/type_message.dart';
import '../../../models/usuario.dart';
import '../../../widgets/loading_dialog.dart';
import '../../../widgets/message_dialog.dart';

class EmailValidatePage extends StatelessWidget {

  
  EmailValidatePage({Key? key, }) : super(key: key);

  final _formKey = GlobalKey<FormBuilderState>();
  final _scaKey = GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    final provider = BlocProvider.of<GlobalSettingBloc>(context);

    return Scaffold(
      key: _scaKey,
      appBar: AppBar(actions: const [AccebilityMenu()],),
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
                            CircleAvatar(
                                  backgroundColor: Colors.blueGrey[900],
                                  radius: 60,
                                  child: Image.asset(
                                    'assets/img/logo_transparente.png', 
                                    width: 80,
                                    filterQuality: FilterQuality.high,),
                                ),
                            const SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Clave Secreta',
                                  softWrap: true,
                                  style: Theme.of(context).textTheme.titleMedium,
                                ),
                              ],
                            ),
                            const SizedBox(height: 20,),
                            Text(
                              'Ingrese la clave secreta enviada al correo ${provider.state.usuario?.correo ?? '(No tiene correo)'}.\n\nEsta expirara en 60 min.',
                              softWrap: true,
                              style: Theme.of(context).textTheme.caption,
                            ),
                            const SizedBox(height: 20,),
                            FormBuilderTextField(
                              name: 'txtClave',
                              obscureText: true,
                              keyboardType: TextInputType.number,
                              validator: FormBuilderValidators.compose([
                                FormBuilderValidators.required(
                                    errorText: 'Clave requerida'),
                                FormBuilderValidators.maxLength(6,
                                    errorText:
                                        'No puede superar los 6 caracteres'),
                              ]),
                            ),
                            const SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                
                                ElevatedButton(
                                    onPressed: () => _onSubmit(context),
                                    child: const Text('Aceptar'))
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
            BlocConsumer<ClaveSecretBloc, ClaveSecretState>(
              listener: (context, state) {
                if(state is ClaveSecretSuccess) {
                  _formKey.currentState?.reset();
                  BlocProvider.of<GlobalSettingBloc>(context).add(SetUserEvent(state.usuarioValido));
                  context.router.replaceNamed('/map');
                }
              },
              builder: (context, state) {
  
                  if (state is ClaveSecretLoading) {
                    return const LoadingDialog();
                  }

                  if (state is ClaveSecretError) {
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
    final settingProvider = BlocProvider.of<GlobalSettingBloc>(context);
    final provider = BlocProvider.of<ClaveSecretBloc>(context);
    _formKey.currentState?.validate();
    if (_formKey.currentState?.isValid ?? false) {
      final fields = _formKey.currentState?.fields ?? {};
      print(fields);
      provider.add(ClaveSecretSubmitEvent(
          settingProvider.state.usuario?.cuenta ?? '', 
          settingProvider.state.usuario?.rut ?? 0, 
          fields['txtClave']?.value));
    }
  }

  _onError(BuildContext context) {
    final provider = BlocProvider.of<ClaveSecretBloc>(context);
    provider.add(ClaveSecretInitEvent());
  }

}
