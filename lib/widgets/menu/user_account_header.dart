import 'package:flutter/material.dart';

class UserAccountHeader extends StatelessWidget {
  const UserAccountHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [imgUser(), txtName(context), txtEmail(context)],
    ));
  }

  imgUser() {
    return const CircleAvatar(
      maxRadius: 30,
      child: Text("P"),
    );
  }

  txtName(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Text(
        "Pedro Bros",
        style: Theme.of(context).textTheme.subtitle2,
      ),
    );
  }

  txtEmail(BuildContext context) {
    return Text(
      "pedro.bros@fcab.cl",
      style: Theme.of(context).textTheme.subtitle2,
    );
  }
}
