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
import '../../models/usuario_acceso.dart';
import '../../services/mock/usuario_acceso_service_mock.dart';

class UserListAccesos extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();
  final Usuario usuario;

  UserListAccesos({Key? key, required this.usuario}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 400,
          width: 400,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Accesos ${usuario.usuario}', style: Theme.of(context).textTheme.titleLarge,),
                      IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.clear), tooltip: 'Cerrar',)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (BuildContext context, int index) {
                        final acceso = listUsuarioAccesoMock[index];
                        return ListTile(title: Text(acceso.id_acceso), trailing: Switch(value: acceso.estado == 'ACTIVO', onChanged: (value) {},));
                      },
                      itemCount: listUsuarioAccesoMock.length,
                      separatorBuilder: (BuildContext context, int index) {return const Divider(); },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
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
        estado: fields['cmbEstado'].toString(),
      );

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
