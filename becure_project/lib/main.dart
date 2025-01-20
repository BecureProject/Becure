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
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(253, 246, 221, 1), // Light yellow
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Hexagon Logo
              Center(
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle, // Replace with hexagon if needed
                    color: Colors.amber,
                  ),
                  child: const Center(
                    child: Text(
                      'BeCure',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown,
                        fontFamily: 'Cursive', // Ensure this font is available
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Tagline
              Column(
                children: const [
                  Text(
                    'Fight The Mites',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(37, 38, 48, 1),
                    ),
                  ),
                  Text(
                    'To Save The Bees',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(124, 80, 45, 1),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              // Bee Icon with Scanner Frame
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.brown,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Image.asset(
                      'assets/bee.png', // Replace with your bee image
                      width: 60,
                      height: 60,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
