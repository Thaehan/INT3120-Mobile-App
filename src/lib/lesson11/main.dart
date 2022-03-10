import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:scoped_model/scoped_model.dart';
import './player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Model',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(title: 'Model'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        padding: const EdgeInsets.only(top: 10),
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            final item = list[index];
            return ItemBox(
              player:
                  Player(item['name']!, item['number']!, item['imagePath']!, 0),
            );
          },
        ),
      ),
    );
  }
}

class ItemBox extends StatelessWidget {
  const ItemBox({Key? key, required this.player}) : super(key: key);

  final Player player;

  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: player,
      child: Column(
        children: [
          ListTile(
            leading: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(image: AssetImage(player.imagePath)),
              ),
            ),
            title: Text(player.name),
            subtitle: Text(player.number),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 0, left: 90),
              child: ScopedModelDescendant<Player>(
                  builder: (context, child, model) {
                return RatingBox(player: model);
              })),
        ],
      ),
    );
  }
}

class RatingBox extends StatelessWidget {
  const RatingBox({Key? key, required this.player}) : super(key: key);
  final Player player;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [1, 2, 3, 4, 5]
          .map(
            (i) => IconButton(
              onPressed: () {
                player.setRating(i);
              },
              icon: player.rating >= i
                  ? const Icon(Icons.star)
                  : const Icon(Icons.star_border),
              color: const Color.fromARGB(255, 255, 218, 10),
            ),
          )
          .toList(),
    );
  }
}
