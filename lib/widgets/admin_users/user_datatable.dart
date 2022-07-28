import 'package:fcab_map/models/usuario.dart';
import 'package:fcab_map/utils/dialog_utils.dart';
import 'package:fcab_map/widgets/admin_users/user_list_accesos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/user/admin_user/admin_user_bloc.dart';
import '../../bloc/user/edit_user/edit_user_bloc.dart';
import '../../screens/base_screen.dart';
import 'user_edit_form.dart';

class UsuarioDatatable extends StatelessWidget {

  final AdminUserState state;
  
  const UsuarioDatatable({Key? key, required this.state, }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    final provider = BlocProvider.of<AdminUserBloc>(context);
    //print(state.usuarios);
    return PaginatedDataTable(
      rowsPerPage: PaginatedDataTable.defaultRowsPerPage,
      columns: getColumns(), 
      onPageChanged: (value) {
        print('PAGE  '+ value.toString() );
        //provider.add(SearchAdminUserEvent(search: state.search, itemsPerPage: state.itemsPerPage, page: value));
      } ,
      onRowsPerPageChanged: (value) {
        print('ROWS  '+ value.toString() );
        //provider.add(SearchAdminUserEvent(search: state.search, itemsPerPage: value ?? state.itemsPerPage, page: state.page));
      },
      source: UsuarioDataTableSource(state: state, context: context));
  }


  List<DataColumn> getColumns(){
    return const [
      DataColumn(label: Text('ID')),
      DataColumn(label: Text('Usuario')),   
      DataColumn(label: Text('Email')),   
      DataColumn(label: Text('Ultimo Ingreso')), 
      DataColumn(label: Text('Estado')), 
      DataColumn(label: Text('Acciones')), 
    ];
  }

  
}


class UsuarioDataTableSource extends DataTableSource{

  final AdminUserState state;
  final BuildContext context;

  UsuarioDataTableSource({required this.state, required this.context});

  @override
  DataRow? getRow(int index) {
    final data = state.usuarios;
    print(index);

    if(data.isNotEmpty) {
      return DataRow(
        cells: [
        DataCell(Text(data[index].rut.toString())),
        DataCell(Text(data[index].nombre)),
        DataCell(Text(data[index].cuenta)),
        DataCell(Text(data[index].correo)),
        DataCell(Text(data[index].estado)),
        DataCell(Row(
          children: [
            IconButton(
              icon: const Icon(Icons.edit, color: Colors.orange,), 
              splashColor: Colors.transparent,
              hoverColor: Colors.transparent,
              tooltip: 'Editar',
              onPressed: () =>_showDialogEdit(context, data[index]),
              ),
            IconButton(
              icon: const Icon(Icons.remove_red_eye, color: Colors.blue,), 
              splashColor: Colors.transparent,
              hoverColor: Colors.transparent,
              tooltip: 'Accesos',
              onPressed: () =>showAccesos(context, data[index]),
              ),
          ],
        )),
      ]);
    }
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => state.totalItems;

  @override
  int get selectedRowCount => 0;


  void showAccesos(BuildContext context, Usuario usuario){
    showDialog(
        context: context,
        builder: (context) {
          return BlocProvider(
            create: (context) => EditUserBloc(usuario),
            child: BaseScreen(
                child: Center(
              child: ListFiltroUsuario(usuario: usuario),
            )),
          );
        });
  }

  _showDialogEdit(BuildContext context, Usuario usuario) {
    showDialog(
        context: context,
        builder: (context) {
          return BlocProvider(
            create: (context) => EditUserBloc(usuario),
            child: BaseScreen(
                child: Center(
              child: UserEditForm(usuario: usuario),
            )),
          );
        });
  }

}