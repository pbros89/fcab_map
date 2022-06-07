import 'package:flutter/material.dart';

class LoadingDialog extends StatelessWidget {

  const LoadingDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.black26,
      child: const Center(child: CircularProgressIndicator()),
    );
  }
}