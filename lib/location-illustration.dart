import 'package:flutter/material.dart';

class HallImagePage extends StatelessWidget {
  final String location;

  const HallImagePage({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hall Illustration'), // Customize the title
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/$location.png', // Load the image based on location

              width: MediaQuery.of(context).size.width,
            ),
            // You can add additional widgets or information here
          ],
        ),
      ),
    );
  }
}
