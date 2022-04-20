import 'package:flutter/material.dart';

class MyComboBox<T> extends StatelessWidget {
  final String name;
  final T value;
  final List<T> listValue;
  final Function(T?) onChanged;
  const MyComboBox({
    Key? key,
    required this.value,
    required this.listValue,
    required this.name,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [txtName(), cmbValue(context)],
      ),
    );
  }

  txtName() {
    return SizedBox(width: 100, child: Text(name));
  }

  cmbValue(BuildContext context) {
    return Expanded(
      child: DropdownButton<T>(
          value: value,
          isExpanded: true,
          isDense: true,
          items: getMenuItems(context),
          onChanged: onChanged),
    );
  }

  getMenuItems(BuildContext context) {
    return listValue
        .map((e) => DropdownMenuItem<T>(
            value: e,
            child: Text(
              e.toString(),
              style: Theme.of(context).textTheme.button,
            )))
        .toList();
  }
}
