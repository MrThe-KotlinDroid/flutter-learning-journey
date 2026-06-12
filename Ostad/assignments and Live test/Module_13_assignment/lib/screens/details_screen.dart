import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final int counterValue;

  const DetailsScreen({super.key, required this.counterValue});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Received counter value:',
              style: TextStyle(fontSize: 18, color: Colors.black54),
            ),
            Text(
              '$counterValue',
              style: const TextStyle(
                fontSize: 64,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF6F2FF),
                foregroundColor: Colors.deepPurple,
                elevation: 0,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                  side: const BorderSide(color: Color(0xFFE8E0FF)),
                ),
              ),
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
