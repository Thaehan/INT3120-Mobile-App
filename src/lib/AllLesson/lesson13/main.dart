import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:scoped_model/scoped_model.dart';
import './player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => AppState();
}

class AppState extends State<MyApp> with SingleTickerProviderStateMixin {
  Animation<double>? animation;

  AnimationController? controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 10), vsync: this);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(controller!);
    controller!.forward();
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    controller!.forward();
    return MaterialApp(
      title: 'Animation',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(title: 'Animation', animation: animation),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title, required this.animation})
      : super(key: key);

  final String title;
  final Animation<double>? animation;

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
            final playerData = list[index];
            final player = Player(playerData['name']!, playerData['number']!,
                playerData['imagePath']!, 0);
            return GestureDetector(
                child: ItemBox(
                  player: player,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailPage(player: player)));
                });
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

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key, required this.player}) : super(key: key);

  final Player player;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(player.name),
      ),
      body: ScopedModel(
        model: player,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: ClipRRect(
                child: Image.asset(player.imagePath),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                player.name,
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              player.number,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 85),
              child: ScopedModelDescendant<Player>(
                  builder: (context, child, model) {
                return RatingBox(player: model);
              }),
            )
          ],
        ),
      ),
    );
  }
}
