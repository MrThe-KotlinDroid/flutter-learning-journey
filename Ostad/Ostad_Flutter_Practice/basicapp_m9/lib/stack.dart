import 'package:flutter/material.dart';

class StackPractice extends StatelessWidget {
  const StackPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learning Stack'),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // padding: EdgeInsets.all(16),
              // margin: EdgeInsets.all(20),
              alignment: Alignment.center,
              width: 100,
              height: 100,
              transform: Matrix4.rotationZ(0.3),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 5, color: Colors.red),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(5, 5),
                    blurRadius: 5,
                  ),
                ],
                color: Colors.purple,
              ),
              child: Text(
                'Hello',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),

            SizedBox(height: 20),

            Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.blue.shade100,
                    child: Icon(
                      Icons.medical_services,
                      size: 48,
                      color: Colors.blue.shade700,
                    ),
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr. Rahman',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text('Cardiologist ', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ],
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.red,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                )
              ],
            ),
            SizedBox(height: 10,),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.grey,
                ),
                Positioned(
                  top: 10,
                  right  : 10,
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                  ),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}
