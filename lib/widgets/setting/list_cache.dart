import 'package:flutter/material.dart';
import '../../enums/type_message.dart';
import '../../utils/dialog_utils.dart';
import '../message_dialog.dart';

class ListCache extends StatelessWidget {
  const ListCache({Key? key}) : super(key: key);

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

  List<Widget> listItems(BuildContext context) {
    return [
      ListTile(
        title: const Text("Borrar Cache"),
        trailing: TextButton(
          child: const Text('Borrar'),
          onPressed: () {
            showMyDialog(context: context, child: MessageDialog(
              message: 'Esta seguro de borrar la cache?', 
              typeMessage: TypeMessage.confirm,
              aceptarClick: (context) => null));
          }),
      ),];
  }
}