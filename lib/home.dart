import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.grey
        ),
        backgroundColor: Colors.white,
        title: Image.asset(
            "assets/youtube.png",
          width: 98,
          height: 22,
        ),
        actions: <Widget>[
          IconButton(
              onPressed: (){
                print("BOTÃO DE VIDEO");
              },
              icon: const Icon(Icons.videocam)
          ),
          IconButton(
              onPressed: (){
                print("BOTÃO DE SEARCH");
              },
              icon: const Icon(Icons.search)
          ),
          IconButton(
              onPressed: (){
                print("BOTÃO DE CONTA");
              },
              icon: const Icon(Icons.account_circle)
          )
        ],
      ),
    );
  }
}
