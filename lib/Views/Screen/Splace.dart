import 'dart:async';

import 'package:flutter/material.dart';

class SplacePage extends StatefulWidget {
  const SplacePage({super.key});

  @override
  State<SplacePage> createState() => _SplacePageState();
}

class _SplacePageState extends State<SplacePage> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation sizeAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    )
      ..forward()
      ..addListener(() {
        setState(() {});
      });
    sizeAnimation = Tween<double>(begin: 200, end: 844).animate(controller);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, 'Home_page');
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: controller,
              builder: (BuildContext ctx, child) {
                return Container(
                  height: sizeAnimation.value,
                  width: sizeAnimation.value,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('Asset/Images/univarsesplace.gif'),
                        fit: BoxFit.fill),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
