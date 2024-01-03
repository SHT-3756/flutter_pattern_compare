import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';

void main() {
  runApp(const TestApp());
}

class TestApp extends StatefulWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  State<TestApp> createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  late ConfettiController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ConfettiController(
        duration: const Duration(
      seconds: 2,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Scratcher(
            brushSize: 50,
            threshold: 75,
            color: Colors.white,
            image: Image.asset('assets/image/icons.png'),
            onChange: (value) => print('Scratch progress'),
            onThreshold: () => _controller.play(),
            child: SizedBox(
              height: 300,
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/image/icons.png',
                    fit: BoxFit.contain,
                    width: 150,
                    height: 150,
                  ),
                  Column(
                    children: [
                      ConfettiWidget(
                        confettiController: _controller,
                        blastDirectionality: BlastDirectionality.explosive,
                        particleDrag: 0.05,
                        emissionFrequency: 0.05,
                        numberOfParticles: 100,
                        gravity: 0.05,
                          shouldLoop: false,
                        colors: const [
                          Colors.green,
                          Colors.red,
                          Colors.yellow,
                          Colors.blue,
                        ],

                      ),
                      const Text('You Win!', style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 25
                      ),)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
