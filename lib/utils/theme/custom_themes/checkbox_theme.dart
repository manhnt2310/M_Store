import 'package:flutter/material.dart';

class MCheckboxTheme {
  MCheckboxTheme._();

  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith((state) {
      if (state.contains(WidgetState.selected)) {
        return Colors.white;
      }
      return Colors.black;
    }),
    fillColor: WidgetStateProperty.resolveWith((state) {
      if (state.contains(WidgetState.selected)) {
        return Colors.blue;
      }
      return Colors.transparent;
    }),
  );

  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith((state) {
      if (state.contains(WidgetState.selected)) {
        return Colors.white;
      }
      return Colors.black;
    }),
    fillColor: WidgetStateProperty.resolveWith((state) {
      if (state.contains(WidgetState.selected)) {
        return Colors.blue;
      }
      return Colors.transparent;
    }),
  );
}
