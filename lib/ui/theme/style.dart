import 'package:flutter/material.dart';

class Style {
  static const iconSize = _IconSize();
  static const spacing = _Spacing();
  static const circular = _Circular();

  static const gray = _Gray();
}

class _IconSize {
  final small = 16.0;
  final medium = 24.0;
  final large = 32.0;

  const _IconSize();
}

class _Circular {
  final listItem = 4.0;

  const _Circular();
}

class _Spacing {
  final tiny = 6.0;
  final small = 12.0;
  final medium = 16.0;
  final large = 24.0;

  const _Spacing();
}

class _Gray {
  final border = Colors.black38;
  final caption = Colors.black45;

  const _Gray();
}
