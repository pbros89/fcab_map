import 'package:animate_do/animate_do.dart';
import 'package:fcab_map/enums/type_message.dart';
import 'package:flutter/material.dart';

class MessageDialog extends StatelessWidget {
  final TypeMessage typeMessage;
  final String message;
  final Function(BuildContext) aceptarClick;
  const MessageDialog({Key? key, this.typeMessage = TypeMessage.info, required this.message, required this.aceptarClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleTitle = Theme.of(context).textTheme.titleLarge!.copyWith(color: getTextColor());
    final styleMessage = Theme.of(context).textTheme.bodyLarge!.copyWith(color: getTextColor());

    return FadeIn(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black26,
        
        child: Center(
          child: SingleChildScrollView(
            child: SizedBox(
              height: 350,
              width: 350,
              child: Card(
                color: getColor(),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(getIcon(), color: getTextColor(), size: 50,),
                      Text(getTitle(), style: styleTitle,),
                      Text(message, style: styleMessage, softWrap: true,),
                      if(typeMessage == TypeMessage.confirm)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            OutlinedButton(onPressed: () => Navigator.pop(context), child: Text('Cancelar',style: TextStyle(color: getTextColor()),)),
                            OutlinedButton(onPressed: () => aceptarClick(context), child: Text('Aceptar',style: TextStyle(color: getTextColor()),)),
                          ],
                        ),
                      if(typeMessage != TypeMessage.confirm)
                        OutlinedButton(onPressed: () => aceptarClick(context), child: Text('Aceptar',style: TextStyle(color: getTextColor()),)),
                    ],
                  ),
                )
              ),
            ),
          )
        ),
      ),
    );
  }


  getIcon(){
    switch(typeMessage){
      case TypeMessage.error:
        return Icons.error;
      case TypeMessage.info:
        return Icons.info;
      case TypeMessage.warning:
        return Icons.warning;
      case TypeMessage.success:
        return Icons.task_alt;
      case TypeMessage.confirm:
        return Icons.question_mark;
    }
  }

  getTitle(){
    switch(typeMessage){
      case TypeMessage.error:
        return 'Error';
      case TypeMessage.info:
        return 'Información';
      case TypeMessage.warning:
        return 'Advertencia';
      case TypeMessage.success:
        return 'Correcto';
      case TypeMessage.confirm:
        return 'Confirmar';
    }
  }


  Color? getColor(){
    switch(typeMessage){
      case TypeMessage.error:
        return Colors.red[700];
      case TypeMessage.info:
        return Colors.blue[700];
      case TypeMessage.warning:
        return Colors.orange[700];
      case TypeMessage.success:
        return Colors.green[700];
      case TypeMessage.confirm:
        return Colors.purple;
    }
  }

  Color? getTextColor(){
    switch(typeMessage){
      case TypeMessage.error:
        return Colors.white;
      case TypeMessage.info:
        return Colors.white;
      case TypeMessage.warning:
        return Colors.white;
      case TypeMessage.success:
        return Colors.white;
      case TypeMessage.confirm:
        return Colors.white;
    }
  }
}