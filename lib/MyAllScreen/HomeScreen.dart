import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var Myinput = TextEditingController();

  var mytext ="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Text(mytext),
              TextField(
                controller: Myinput,
                onChanged: (value) {
                  setState(() {
                    mytext = value;
                  });
                },
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
