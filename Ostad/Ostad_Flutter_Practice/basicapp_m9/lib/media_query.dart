import 'package:flutter/material.dart';

class MQuery extends StatelessWidget {
  const MQuery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MediaQuery'),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Center(child: Text('Hello Dart', style: TextStyle(fontSize: 24))),
          Align(
            alignment: Alignment.topLeft,
            child: Text('Hello Dart Again', style: TextStyle(fontSize: 24)),
          ),
          Container(
            alignment: Alignment.topRight,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            height: 150,
            width: 150,

            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.blue, Colors.red],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
              color: Colors.blue,
              border: Border.all(color: Colors.grey, width: 5),
              borderRadius: BorderRadius.circular(10),

              boxShadow: [
                BoxShadow(
                  color: Colors.red.shade200,
                  spreadRadius: 2,
                  offset: Offset(0, 5),
                  blurRadius: 10
                ),
              ],
            ),
            child: Text('Hello Flutter', style: TextStyle(fontSize: 25)),
          ),
        ],
      ),
    );
  }
}
