
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
      home: Scaffold(
        backgroundColor: const Color(0xFFFFF7FF),
        appBar: AppBar(
          title: const Text(
            'MILLEVO_Activity5_Main_Cross_Alignment',
            style: TextStyle(fontSize: 14),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFF009688),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'CrossAxisAlignment.center',
                style: TextStyle(fontSize: 10),
              ),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    color: Colors.red,
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    color: Colors.blue,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
