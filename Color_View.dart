// bir ekran olacak
// bu ekranda 3 buton ve bunlara basınca renk değişecek
// secişi buton selected icon olsun
import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  ColorDemos({Key? key}) : super(key: key);

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backgroundColor = Colors.transparent;
  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(onTap: _colorOnTap, items: [
        BottomNavigationBarItem(icon: _Colorr(color: Colors.red), label: 'Red'),
        BottomNavigationBarItem(
            icon: _Colorr(
              color: Colors.blue,
            ),
            label: 'Blue'),
        BottomNavigationBarItem(
            icon: _Colorr(color: Colors.green), label: 'Green')
      ]),
    );
  }

  void _colorOnTap(int value) {
    if (value == _MyColors.red.index) {
      changeBackgroundColor(Colors.red);
    } else if (value == _MyColors.blue.index) {
      changeBackgroundColor(Colors.blue);
    } else if (value == _MyColors.green.index) {
      changeBackgroundColor(Colors.green);
    }
  }
}

enum _MyColors { red, blue, green }

class _Colorr extends StatelessWidget {
  const _Colorr({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}
