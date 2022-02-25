import 'package:flutter/material.dart';

void main() => const MyHomePage(title: "Non");

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(
          child: Text(
        'Hello World',
      )),
    );
  }
}
