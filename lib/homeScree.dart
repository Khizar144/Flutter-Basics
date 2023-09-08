// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_app/input.dart';

class homeScreen extends StatefulWidget {
  static const id = "homeScreen";
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        drawer: SafeArea(
          child: Drawer(
             
            // ignore: prefer_const_literals_to_create_immutables
            child: ListView(children: [
              UserAccountsDrawerHeader(

                  currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH6PjyUR8U-UgBWkOzFe38qcO29regN43tlGGk4sRd&s")),
                  accountName: Text("khizar"),
                  accountEmail: Text("khizar@gmail.com"))
            ]),
          ),
        ),
        body: Center(
          child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, InputForm.id);
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => InputForm()));
              },
              child: Text("Screen 2")),
        ),
      ),
    );
  }
}
