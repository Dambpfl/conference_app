import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Conférence 2026"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/logo.svg',
                colorFilter: ColorFilter.mode(Colors.blue, BlendMode.srcIn),
              ),
                const Text(
                "Conférence 2026",
                style: TextStyle(
                  fontSize: 42,
                  fontFamily: 'Poppins'
                ),
                ),
                const Text("Salon virtuel de l'informatique du 27 au 29 octobre 2026",
                style: TextStyle(
                  fontSize: 24
                ),
                textAlign: TextAlign.center,)
            ],
          ),
        ),
      ),
    );
  }
}