
import 'package:fcab_map/bloc/auth/register/register_bloc.dart';
import 'package:flutter/material.dart';

import '../../../widgets/loading_dialog.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*return BlocProvider(
      create: (context) => RegisterBloc(),
      child: Builder(builder: (context) {
        final loginBloc = BlocProvider.of<RegisterBloc>(context);

        return Scaffold(
          appBar: AppBar(title: const Text('Registrar Usuario'),),
          body: FormBlocListener<RegisterBloc, String,
                String>(
              onSubmitting: (context, state) {
                //LoadingDialog.show(context);
              },
              onSuccess: (context, state) {
                //LoadingDialog.hide(context);

                //REDIRECT
              },
              onFailure: (context, state) {
                //LoadingDialog.hide(context);
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(state.failureResponse!)));
              },
              child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: Column(
                  children: <Widget>[
                    TextFieldBlocBuilder(
                      textFieldBloc: loginBloc.username,
                      autofillHints: const [AutofillHints.username],
                      decoration: const InputDecoration(
                        labelText: 'Usuario',
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                    TextFieldBlocBuilder(
                      textFieldBloc: loginBloc.password,
                      autofillHints: const [AutofillHints.password],
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        labelText: 'Contraseña',
                        prefixIcon: Icon(Icons.lock_outline),
                      ),
                    ),

                    TextFieldBlocBuilder(
                      textFieldBloc: loginBloc.password,
                      autofillHints: const [AutofillHints.password],
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        labelText: 'Re-Contraseña',
                        prefixIcon: Icon(Icons.lock_outline),
                      ),
                    ),
                    
                    ElevatedButton(
                      onPressed: loginBloc.submit,
                      child: const Text('Registrar'),
                    ),
                  ],
                ),
              ),
          ),
        );

      }),
    );*/
    return Container();
  }

}
