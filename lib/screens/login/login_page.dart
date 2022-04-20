import 'package:fcab_map/widgets/glass_container.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //BACKGROUND
          Container(),
          //CARD FORM
          Form(
            child: GlassContainer(
                child: Card(
              child: Column(
                children: [],
              ),
            )),
          )
        ],
      ),
    );
  }

  txtUsername() {
    return TextFormField();
  }
}
