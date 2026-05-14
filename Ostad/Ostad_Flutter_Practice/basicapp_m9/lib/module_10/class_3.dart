import 'package:flutter/material.dart';

class Module10Class3 extends StatelessWidget {
  const Module10Class3({super.key});

  @override
  Widget build(BuildContext context) {
    
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;

    final orientation = MediaQuery.of(context).orientation;
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Class-3'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: orientation == Orientation.portrait ? Column(
          children: [
        
            Text(orientation.toString(), style: TextStyle(fontSize: 24)),
        
            RichText(
              text: TextSpan(
                text: 'Hello',
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Abrar',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
        
            RichText(
              text: TextSpan(
                text: 'Don\'t have an account? ',
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Sign up',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
        
            Text('Without MQ', style: TextStyle(fontSize: 24)),
            Container(height: 150, width: 150, color: Colors.red),
            SizedBox(height: 20),
            Text('With MQ', style: TextStyle(fontSize: screenWidth*0.05)),
            Container(height: screenHeight*0.16, width: screenWidth*0.3, color: Colors.green),
          ],
        ) : SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
          children: [

            Text(orientation.toString(), style: TextStyle(fontSize: 24)),

            RichText(
              text: TextSpan(
                text: 'Hello',
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Abrar',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),

            RichText(
              text: TextSpan(
                text: 'Don\'t have an account? ',
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Sign up',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),

            Text('Without MQ', style: TextStyle(fontSize: 24)),
            Container(height: 150, width: 150, color: Colors.red),
            SizedBox(height: 20),
            Text('With MQ', style: TextStyle(fontSize: screenWidth*0.05)),
            Container(height: screenHeight*0.16, width: screenWidth*0.3, color: Colors.green),
          ],
                ),
        ),
      ),
    );
  }
}
