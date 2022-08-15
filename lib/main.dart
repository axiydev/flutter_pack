/*
Created by Axmadjon Isaqov on 15:29:36 15.08.2022
© 2022 @axi_dev 
*/

/*
Mavzu:::Advanced Packages 
*/

import 'package:flutter/material.dart';
import 'package:flutter_pack/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
