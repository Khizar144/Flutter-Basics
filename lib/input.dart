// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class InputForm extends StatefulWidget {
  static const String id = "InputForm";
  InputForm({super.key});

  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  String? val;

  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Welcome to Flutter'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: textController,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.black,
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.green,
                          ))),
                ),
                ElevatedButton(
                    onPressed: () {
                      val = textController.value.text;
                      setState(() {});
                    },
                    child: Text('press')),
                Text('text input is $val'),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("go back"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
