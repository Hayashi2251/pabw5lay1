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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _increment = 0;
  String _nama = "Nama:\nSiloam Wahjoe Wijaja\n1461900133";
  final List<String> _mangkel = [
    "Rewel banget sih Pak!",
    "Iya! Aduh Pak!",
    "Ga Capek apa klik terus?",
    "Sudah Pak, tobat!",
    "Bapak imut kok"
  ];

  void _additionWesEroPake() {
    setState(() {
      _increment++;
      if (_increment > 3) {
        _nama = "$_nama\n${_mangkel[_increment - 3]}";
        if (_increment == 7) {
          _increment = 3;
        }
      } else {
        _nama = "$_nama\nSudah tahu gw Pak!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [Text("Layout1"), Text("NBI")],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/silonyan.jpeg',
              width: 200,
              height: 200,
            ),
            Container(height: 50),
            Text(
              _nama,
              textAlign: TextAlign.center,
            ),
            Container(height: 50),
            ElevatedButton(
              onPressed: () {
                _additionWesEroPake();
              },
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.green[900]),
              child: const Text(
                "Sudah Tahu...",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}