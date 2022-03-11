import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'MyApp',
      home: HomePage(title: 'Show list'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final list = [
    {
      'name': 's1mple',
      'imagePath': 'assets/images/s1mple.jpg',
      'number': '1',
    },
    {
      'name': 'NiKo',
      'imagePath': 'assets/images/niko.jpg',
      'number': '2',
    },
    {
      'name': 'Twistzz',
      'imagePath': 'assets/images/twistzz.jpg',
      'number': '3',
    },
    {
      'name': 'kennyS',
      'imagePath': 'assets/images/kennys.jpg',
      'number': '99',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(list[index]['imagePath']!)),
                ),
              ),
              title: Text(list[index]['name']!),
              subtitle: Text(list[index]['number']!),
            );
          },
        ),
      ),
    );
  }
}
