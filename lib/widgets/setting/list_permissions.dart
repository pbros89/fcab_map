import 'package:flutter/material.dart';
class ListPermissions extends StatelessWidget {
  const ListPermissions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        List<Widget> items = listItems(context,);
        return SliverList(
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            return items[index];
          }, childCount: items.length),
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