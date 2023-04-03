import 'package:flutter/material.dart';

extension CustomStyles on TextTheme {
  TextStyle get detailsTitle => const TextStyle(
      decoration: TextDecoration.underline,
      fontSize: 18.0,
      color: Colors.black,
      fontWeight: FontWeight.normal,
      fontFamily: 'Roboto');

  TextStyle get detailsSubtitle => const TextStyle(
      fontSize: 16.0,
      color: Colors.black87,
      fontWeight: FontWeight.normal,
      fontFamily: 'Roboto');
}
