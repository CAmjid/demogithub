import 'package:flutter/material.dart';
import 'package:loginpage/home2.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const LOgin()));
        },
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/iPhone 13 & 14 - 1.png'),
                fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
