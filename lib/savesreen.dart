import 'package:flutter/material.dart';

class Savesreen extends StatelessWidget {
  const Savesreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/Amritha Ayurveda.png'),
                fit: BoxFit.fill)),
      ),
    );
  }
}
