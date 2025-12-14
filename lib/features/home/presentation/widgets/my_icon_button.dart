import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback pressed;

  const MyIconButton({
    super.key,
    required this.iconData,
    required this.pressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: Colors.white,
        fixedSize: Size(50, 50),
      ),
      onPressed: pressed,
      icon: Icon(iconData),
    );
  }
}
