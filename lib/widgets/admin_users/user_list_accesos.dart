
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import '../../models/usuario.dart';

class ListFiltroUsuario extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();
  final Usuario usuario;

  ListFiltroUsuario({Key? key, required this.usuario}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = listItems(context);
    return Stack(
      children: [
        SizedBox(
          height: 450,
          width: 450,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Permisos ${usuario.nombre}', style: Theme.of(context).textTheme.titleLarge,),
                      IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.clear), tooltip: 'Cerrar',)
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (BuildContext context, int index) {
                        return items[index];
                      },
                      itemCount: items.length,
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


  List<Widget> listItems(BuildContext context){
    return [
      const ListTile(
        title: Text("Ver Ramales"),
        trailing: Text('TODOS')
      ),
      ListTile(
        title: const Text("Ver Trenes"),
        trailing: Switch(
          value: true,
          onChanged: (bool value) {
            return;
          },
        ),
      ),
      ListTile(
        title: const Text("Ver Estaciones"),
        trailing: Switch(
          value: true,
          onChanged: (bool value) {
            return;
          },
        ),
      ),
      ListTile(
        title: const Text("Ver Terminales"),
        trailing: Switch(
          value: true,
          onChanged: (bool value) {
            return;
          },
        ),
      ),
      ListTile(
        title: const Text("Ver Vías Cedidas"),
        trailing: Switch(
          value: true,
          onChanged: (bool value) {
            return;
          },
        ),
      ),
      ListTile(
        title: const Text("Ver Vías Libres"),
        trailing: Switch(
          value: true,
          onChanged: (bool value) {
            return;
          },
        ),
      ),
      ListTile(
        title: const Text("Ver Precauciones"),
        trailing: Switch(
          value: true,
          onChanged: (bool value) {
            return;
          },
        ),
      ),
      ListTile(
        title: const Text("Ver Detectores Desrielo"),
        trailing: Switch(
          value: true,
          onChanged: (bool value) {
            return;
          },
        ),
      ),];
  }
}
