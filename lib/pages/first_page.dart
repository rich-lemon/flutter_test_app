import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: const Text('Name', style: TextStyle(fontSize: 20)),
          title: TextField(
            decoration: InputDecoration(
              fillColor: Colors.green[50],
              filled: true,
              hintText: 'タランドゥスオオツヤクワガタ',
            ),
          ),
        ),
        ListTile(
          leading: const Text('Email', style: TextStyle(fontSize: 20)),
          title: TextField(
            decoration: InputDecoration(
              fillColor: Colors.green[50],
              filled: true,
              hintText: 'kuwagata@sample.com',
            ),
          ),
        ),
      ],
    );
  }
}
