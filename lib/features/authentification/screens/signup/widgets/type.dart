import 'package:flutter/material.dart';

class TypeScreen extends StatefulWidget {
  const TypeScreen({super.key});

  @override
  State<TypeScreen> createState() => _TypeScreenState();
}

class _TypeScreenState extends State<TypeScreen> {
  late String valueChoose = listItem[0];
  final List<String> listItem = ["client", "magasinier"];

  @override
  Widget build(BuildContext context) {
    return Row(
      // Ensure enough space for expansion
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: DropdownButton<String>(
            isExpanded: true,
            value: valueChoose,
            onChanged: (newValue) {
              setState(() {
                valueChoose = newValue!;
              });
            },
            items: listItem.map((valueItem) {
              return DropdownMenuItem<String>(
                value: valueItem,
                child: Text(valueItem),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}