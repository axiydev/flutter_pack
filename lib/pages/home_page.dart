import 'package:advance_package/advance_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pack/pages/liquid_page.dart';
import 'package:flutter_pack/service/fl_toast.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) => InkWell(
              onTap: () {
                FLToast.show('$index pressed');
              },
              child: SrcWidget.simpleTile('index $index')!)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LiquidPageOne()));
        },
        child: const Image(
          image: AssetImage('assets/logo_1.png', package: "advance_package"),
        ),
      ),
    );
  }
}
