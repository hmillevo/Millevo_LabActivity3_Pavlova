
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EdgeInsets Example',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF7FF),

      appBar: AppBar(
        title: const Text('MILLEVO_Activity4_Edgeinsets'),
        backgroundColor: const Color(0xFFD1B8FF),
        actions: const [
          Icon(Icons.more_horiz, color: Colors.grey),
          SizedBox(width: 15),
        ],
      ),

      body: Column(
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.all(30),
              color: Colors.red,
              child: const Text(
                'EdgeInsets.all(30)',
                style: TextStyle(fontSize: 10),
              ),
            ),
          ),

          const SizedBox(height: 23),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 10,
            ),
            color: Colors.yellow,
            child: const Center(
              child: Text(
                'EdgeInsets.symmetric(horizontal: 40, vertical: 10)',
                style: TextStyle(fontSize: 10),
              ),
            ),
          ),

          const SizedBox(height: 23),

          Center(
            child: Container(
              padding: const EdgeInsets.only(
                left: 30,
                top: 10,
                right: 5,
                bottom: 20,
              ),
              color: Colors.blue,
              child: const Text(
                'EdgeInsets.only(left: 30, top: 10, right: 5, bottom: 20)',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          const SizedBox(height: 23),

          Center(
            child: Container(
              padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
              color: Colors.green,
              child: const Text(
                'EdgeInsets.fromLTRB(10, 20, 30, 40)',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
