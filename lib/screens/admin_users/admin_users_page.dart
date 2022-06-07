import 'package:fcab_map/enums/type_message.dart';
import 'package:fcab_map/screens/base_screen.dart';
import 'package:fcab_map/widgets/admin_users/user_create_form.dart';
import 'package:fcab_map/widgets/loading_dialog.dart';
import 'package:fcab_map/widgets/menu/drawer_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/user/admin_user/admin_user_bloc.dart';
import '../../bloc/user/create_user/create_user_bloc.dart';
import '../../widgets/admin_users/user_datatable.dart';
import '../../widgets/menu/accesibility_menu.dart';
import '../../widgets/message_dialog.dart';

class AdminUsersPage extends StatelessWidget {
  AdminUsersPage({Key? key}) : super(key: key);

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final provider = BlocProvider.of<AdminUserBloc>(context);
    provider.add(SearchAdminUserEvent());

    return Scaffold(
        appBar: AppBar(actions: [AccebilityMenu()],),
        drawer: const DrawerMenu(),
        body: BaseScreen(
          child: BlocBuilder<AdminUserBloc, AdminUserState>(
            builder: (context, state) {
              return Stack(
                children: [
                  SingleChildScrollView(
                    child: Center(
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        width: 1000,
                        child: Column(
                          children: [
                            header(context, state),
                            const SizedBox(height: 10,),
                            UsuarioDatatable(
                              state: state,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  if (state is AdminUserLoading || state is AdminUserInitial)
                    const LoadingDialog()
                  else if (state is AdminUserError)
                    MessageDialog(
                      typeMessage: TypeMessage.error,
                      message: state.message, 
                      aceptarClick: (context) => provider.add(SearchAdminUserEvent()),
                      
                    )

                  //Container()
                ],
              );
            },
          ),
        ));
  }

  header(context, state) {
    final provider = BlocProvider.of<AdminUserBloc>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
            onPressed: () => _showDialogCreate(context),
            child: const Text('Crear Usuario')),
        SizedBox(
          width: 250,
          child: TextField(
            controller: searchController,
            decoration: InputDecoration(
              hintText: 'Buscar',
              prefixIcon: const Icon(Icons.search),
              suffixIcon: IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  searchController.clear();
                  provider.add(SearchAdminUserEvent(
                      search: '', itemsPerPage: state.itemsPerPage, page: 1));
                },
                hoverColor: Colors.transparent,
                splashColor: Colors.transparent,
              ),
            ),
            onChanged: (value) {
              provider.add(SearchAdminUserEvent(
                  search: value, itemsPerPage: state.itemsPerPage, page: 1));
            },
          ),
        )
      ],
    );
  }

  _showDialogCreate(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return BlocProvider(
            create: (context) => CreateUserBloc(),
            child: const BaseScreen(
                child: Center(
              child: SizedBox(
                width: 500,
                height: 400,
                child: UserCreateForm(),
              ),
            )),
          );
        });
  }

  
}
