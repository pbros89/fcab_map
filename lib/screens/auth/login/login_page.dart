import 'package:auto_route/auto_route.dart';
import 'package:fcab_map/bloc/global_setting/global_setting_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../../bloc/auth/login/login_bloc.dart';
import '../../../enums/type_message.dart';
import '../../../widgets/loading_dialog.dart';
import '../../../widgets/menu/accesibility_menu.dart';
import '../../../widgets/message_dialog.dart';
import '../../base_screen.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormBuilderState>();
  final _scaKey = GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaKey,
      appBar: AppBar(actions: const [AccebilityMenu()],),
      body: BaseScreen(
        child: Stack(
          children: [
            Center(
              child:  SingleChildScrollView(
                child: SizedBox(
                  width: 350,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Card(
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
                                      'Indentificaci??n de Usuario',
                                      softWrap: true,
                                      style: Theme.of(context).textTheme.titleMedium,
                                    ),
                                  ],
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
                                FormBuilderTextField(
                                  name: 'txtPassword',
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                    labelText: 'Contrase??a',
                                  ),
                                  keyboardType: TextInputType.number,
                                  validator: FormBuilderValidators.compose([
                                    FormBuilderValidators.required(
                                        errorText: 'Contrase??a es requerida'),
                                    FormBuilderValidators.maxLength(50,
                                        errorText:
                                            'No puede superar los 50 caracteres'),
                                  ]),
                                ),
                                const SizedBox(height: 20,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                        width: 130,
                                        child: FormBuilderCheckbox(
                                          name: 'checkRemenber',
                                          title: const Text('Recordar'),
                                          initialValue: true,
                                        )),
                                    ElevatedButton(
                                        onPressed: () => _onSubmit(context),
                                        child: const Text('Iniciar Sesi??n'))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      OutlinedButton(onPressed:() {
                        context.router.pushNamed('/auth/change_password');
                      }, child: const Text('??Olvidaste tu contrase??a?'))
                    ],
                  ),
                ),
              ),
            ),
            BlocConsumer<LoginBloc, LoginState>(
              listener: (context, state) {
                if(state is LoginSuccess) {
                  _formKey.currentState?.reset();
                  BlocProvider.of<GlobalSettingBloc>(context).add(SetUserEvent(state.usuario));
                  context.router.replaceNamed('/email_validate');
                }
              },
              builder: (context, state) {
  
                  if (state is LoginLoading) {
                    return const LoadingDialog();
                  }

                  if (state is LoginError) {
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
    final provider = BlocProvider.of<LoginBloc>(context);
    _formKey.currentState?.validate();
    if (_formKey.currentState?.isValid ?? false) {
      final fields = _formKey.currentState?.fields ?? {};
      print(fields);
      provider.add(LoginSubmitEvent(
          fields['txtUsername']?.value, fields['txtPassword']?.value, true));
    }
  }

  _onError(BuildContext context) {
    final provider = BlocProvider.of<LoginBloc>(context);
    provider.add(LoginInitEvent());
  }
}
