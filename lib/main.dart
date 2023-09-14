import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Views/Screen/Home_Page.dart';
import 'Views/Screen/Splace.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (ctx) => SplacePage(),
        'Home_page': (ctx) => HomePage(),
      },
    ),
  );
}
