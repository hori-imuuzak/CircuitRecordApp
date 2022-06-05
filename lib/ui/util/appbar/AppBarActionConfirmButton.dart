import 'package:flutter/material.dart';

class AppBarActionConfirmButton extends StatelessWidget {
  final VoidCallback onPressed;

  const AppBarActionConfirmButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: const Icon(Icons.check),
    );
  }
}
