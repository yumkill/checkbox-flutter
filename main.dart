import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Button',
      theme: ThemeData(),
      home: LayarDepan(),
    );
  }
}

class LayarDepan extends StatefulWidget {
  _LayarDepanState createState() => _LayarDepanState();
}

class _LayarDepanState extends State<LayarDepan> {
  bool? setuju = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layar Ihsan'),
      ),
      body: ListTile(
        leading: Checkbox(
          value: setuju,
          onChanged: (bool? value) {
            setState(() {
              setuju = value;
            });
          },
        ),
        title: Text('Setuju/Tidak Setuju'),
      ),
    );
  }
}
