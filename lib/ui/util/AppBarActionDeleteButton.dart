import 'package:flutter/material.dart';

class AppBarActionDeleteButton extends StatelessWidget {
  final VoidCallback onPressed;

  const AppBarActionDeleteButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: const Icon(Icons.delete),
    );
  }
}
