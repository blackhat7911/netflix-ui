import 'package:flutter/material.dart';

class CustomChildButton extends StatelessWidget {
  const CustomChildButton({
    Key? key,
    required this.child,
    required this.onPressed,
  }) : super(key: key);

  final Widget child;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: child,
    );
  }
}
