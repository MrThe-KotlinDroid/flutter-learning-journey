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
        // mainAxisAlignment: MainAxisAlignment.end,//This will force to start the column from bottom
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: Text(
              'Hello, This is a very long text that now i am writing over here. you can see this text now but u don\'t',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Center(child: Text('Hello Dart', style: TextStyle(fontSize: 24))),
          Align(
            alignment: Alignment.topRight,
            child: Text('Hello Dart Again', style: TextStyle(fontSize: 24)),
          ),
          Container(
            alignment: Alignment.bottomCenter,
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
                  blurRadius: 10,
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
