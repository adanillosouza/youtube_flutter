import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentBottomNavigationIndex = 0;

  @override
  Widget build(BuildContext context) {

    List<Widget> screens = [
      Text("Inicío"),
      Text("Em alta"),
      Text("Inscrições"),
      Text("Biblioteca"),
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.grey),
        backgroundColor: Colors.white,
        title: Image.asset(
          "assets/youtube.png",
          width: 98,
          height: 22,
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                print("BOTÃO DE VIDEO");
              },
              icon: const Icon(Icons.videocam)),
          IconButton(
              onPressed: () {
                print("BOTÃO DE SEARCH");
              },
              icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {
                print("BOTÃO DE CONTA");
              },
              icon: const Icon(Icons.account_circle))
        ],
      ),
      body: screens[_currentBottomNavigationIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentBottomNavigationIndex,
        onTap: (index){
          setState(() {
            _currentBottomNavigationIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.orange,
            label: "Inicío",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            label: "Em alta",
            icon: Icon(Icons.whatshot),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            label: "Inscrições",
            icon: Icon(Icons.subscriptions),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.yellow,
            label: "Biblioteca",
            icon: Icon(Icons.folder),
          ),
        ],
      ),
    );
  }
}
