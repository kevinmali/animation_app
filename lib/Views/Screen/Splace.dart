import 'dart:async';

import 'package:flutter/material.dart';

class SplacePage extends StatefulWidget {
  const SplacePage({super.key});

  @override
  State<SplacePage> createState() => _SplacePageState();
}

class _SplacePageState extends State<SplacePage> with TickerProviderStateMixin {
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, 'Home_page');
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('Asset/Images/intro.gif'),
                    fit: BoxFit.fill),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
