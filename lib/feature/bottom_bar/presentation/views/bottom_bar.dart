import 'package:flutter/material.dart';
import 'package:movies/feature/bottom_bar/bottom_bar_consts.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 64,
        child: BottomNavigationBar(
          elevation: 5,
          currentIndex: currentIndex,
          items: barItems,
          onTap: (value) {
            currentIndex = value;
            setState(() {});
          },
        ),
      ),
      body: screens.elementAt(currentIndex),
    );
  }
}
