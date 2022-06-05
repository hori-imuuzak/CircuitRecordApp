import 'package:flutter/material.dart';

class UnFocusScreen extends StatelessWidget {
  final Widget child;

  const UnFocusScreen({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => FocusScope.of(context).unfocus(),
      child: child,
    );
  }
}
