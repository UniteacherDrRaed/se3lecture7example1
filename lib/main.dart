import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _indexForDrawer = 0;
  static List<Widget> listOfWidgets = [
    Container(
      height: 400,
      width: 600,
      color: Colors.pink,
      child:const Text("Rare plants"),
    ),
    Container(
      height: 500,
      width: 600,
      color: Colors.lime,
      child:const Text("Coastal plants"),
    ),
    Container(
      height: 500,
      width: 600,
      color: Colors.teal,
      child: const Text("lettuce plants")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Example of Drawer",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Center(child: listOfWidgets[_indexForDrawer]),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: Text(
                  "Plants",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                )),
            ListTile(
              leading: const Icon(Icons.ac_unit),
              title: const Text("Rare plants"),
              tileColor: Colors.pink,
              onTap: () {
                setState(() {
                  _indexForDrawer = 0;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.water),
              title: const Text("Coastal plants"),
              tileColor: Colors.lime,
              onTap: () {
                setState(() {
                  _indexForDrawer = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.fastfood),
              title: const Text("lettuce plants"),
              tileColor: Colors.teal,
              onTap: () {
                setState(() {
                  _indexForDrawer = 2;
                });
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
