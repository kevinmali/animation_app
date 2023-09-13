import 'dart:async';

import 'package:flutter/material.dart';

class SplacePage extends StatefulWidget {
  const SplacePage({super.key});

  @override
  State<SplacePage> createState() => _SplacePageState();
}

class _SplacePageState extends State<SplacePage> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, 'Splace');
    });
    return Scaffold(
      body: Column(
        children: [
          AnimatedContainer(
            duration: Duration(seconds: 2),
            child: Image.asset('Asset/Images/univarsesplace.gif'),
          ),
          AnimatedContainer(
            duration: Duration(seconds: 2),
          )
        ],
      ),
    );
  }
}
