import 'package:flutter/material.dart';

extension Size on BuildContext {
  get size => MediaQuery.of(this).size;
  get width => size.width;
  get height => size.height;
}

extension AppTheme on BuildContext {
  ThemeData get appTheme => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;
}
