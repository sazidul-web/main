import 'package:flutter/material.dart';

class DropdownButtonWidget extends StatefulWidget {
  @override
  _CustomDropdownButtonState createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<DropdownButtonWidget> {
  String _selectedValue = 'Python';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedValue,
      items: <String>[
        'JavaScript',
        'Python',
        'Flutter',
        'Django',
        'C',
        'C++',
        'Dart'
      ].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          _selectedValue = newValue!;
        });
      },
    );
  }
}
