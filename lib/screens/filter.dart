// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:petti_app/controller/controller.dart';
import 'package:petti_app/widgets/background.dart';
import 'package:petti_app/widgets/buttons.dart';
import 'package:petti_app/widgets/cards.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  final Controller _controller = Controller();

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
                  const SizedBox(
                    height: 35,
                  ),
                  dropdown(hint: 'Especialidade'),
                  const SizedBox(
                    height: 35,
                  ),
                  dropdown(hint: 'Estado'),
                  const SizedBox(
                    height: 35,
                  ),
                  dropdown(hint: 'Cidade'),
                  const SizedBox(
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
              labelStyle: const TextStyle(fontSize: 20, color: Colors.black),
              errorStyle:
                  const TextStyle(color: Colors.redAccent, fontSize: 16.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
          isEmpty: _controller.controllerFilter.currentSelectedValue == '',
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: _controller.controllerFilter.currentSelectedValue,
              hint: Text(hint),
              isDense: true,
              onChanged: (String? newValue) {
                setState(() {
                  _controller.controllerFilter.currentSelectedValue = newValue;
                  state.didChange(newValue);
                });
              },
              items:
                  _controller.controllerFilter.currencies.map((String value) {
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
