import 'package:flutter/material.dart';

class ButtonPractice extends StatelessWidget {
  const ButtonPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Learning button nicely'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Elevated Button - 1',
                style: TextStyle(fontSize: 24),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Elevated Button - 2',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),

            SizedBox(height: 10),

            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.transparent,
                foregroundColor: Colors.blueAccent,
                side: BorderSide(color: Colors.blueAccent, width: 2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              onPressed: () {},
              child: Text('OutLinedButton', style: TextStyle(fontSize: 24)),
            ),

            TextButton(onPressed: () {}, child: Text('Text Button')),

            Icon(Icons.account_circle_sharp, size: 50, color: Colors.blue),

            IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete, color: Colors.red, size: 50),
            ),

            GestureDetector(
              onTap: () {
                print('on tap');
              },

              onLongPress: () {
                print('on Long Pressed');
              },

              onDoubleTap: () {
                print('Double tap');
              },

              child: Text('Click me to see - GD', style: TextStyle(fontSize: 25)),
            ),

            SizedBox(
              height: 10,
            ),

            InkWell(
              onTap: () {
                print('on tap');
              },

              onLongPress: () {
                print('on Long Pressed');
              },

              onDoubleTap: () {
                print('Double tap');
              },

              child: Text('Click me to see - IW', style: TextStyle(fontSize: 25)),
            ),

          ],
        ),
      ),
      
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.add),)
      );
  }
}
