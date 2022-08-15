import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class LiquidPageOne extends StatefulWidget {
  const LiquidPageOne({super.key});

  @override
  State<LiquidPageOne> createState() => _LiquidPageOneState();
}

class _LiquidPageOneState extends State<LiquidPageOne> {
  LiquidController? _controller;
  int? _currentIndex = 0;
  final List<Widget> _pages = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.blue,
    ),
  ];

  @override
  void initState() {
    _controller = LiquidController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        liquidController: _controller,
        onPageChangeCallback: (newIndex) {
          _currentIndex = newIndex;
        },
        initialPage: 0,
        enableLoop: true,
        waveType: WaveType.liquidReveal,
        fullTransitionValue: 1000,
        pages: _pages,
        enableSideReveal: false,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller!.animateToPage(
            page: _currentIndex! + 1,
            duration: 700,
          );
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
