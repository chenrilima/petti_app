import 'package:flutter/material.dart';

import '../widgets/background.dart';
import '../widgets/buttons.dart';
import '../widgets/cards.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  var _currencies = [
    "Food",
    "Transport",
    "Personal",
    "Shopping",
    "Medical",
    "Rent",
    "Movie",
    "Salary"
  ];

  var _currentSelectedValue;

  late String _selectedValue;
  List<String> listOfValue = ['1', '2', '3', '4', '5'];

  @override
  Widget build(BuildContext context) {
    return Background(
      title: 'Filtrar',
      content: Padding(
        padding: const EdgeInsets.only(top: 36),
        child: ContainerCard(
            width: double.infinity,
            content: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  dropdown(hint: 'Tipo'),
                  SizedBox(
                    height: 35,
                  ),
                  dropdown(hint: 'Especialidade'),
                  SizedBox(
                    height: 35,
                  ),
                  dropdown(hint: 'Estado'),
                  SizedBox(
                    height: 35,
                  ),
                  dropdown(hint: 'Cidade'),
                  SizedBox(
                    height: 35,
                  ),
                  Buttons(
                    width: 90,
                    text: 'Filtrar',
                    onPressed: () {},
                  )
                ],
              ),
            )),
      ),
    );
  }

  FormField<String> dropdown({required String hint}) {
    return FormField<String>(
      builder: (FormFieldState<String> state) {
        return InputDecorator(
          decoration: InputDecoration(
              fillColor: Colors.grey[200],
              labelStyle: TextStyle(fontSize: 20, color: Colors.black),
              errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
          isEmpty: _currentSelectedValue == '',
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: _currentSelectedValue,
              hint: Text(hint),
              isDense: true,
              onChanged: (String? newValue) {
                setState(() {
                  _currentSelectedValue = newValue;
                  state.didChange(newValue);
                });
              },
              items: _currencies.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}
