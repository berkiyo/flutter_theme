import 'package:flutter/material.dart';

ThemeData blueLightTheme = ThemeData(
  colorScheme: ColorScheme.light(
    primary: Colors.blue,
    secondary: Colors.blueAccent,
    surface: Colors.white,
    background: Colors.blue.shade50,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.black,
    onBackground: Colors.black,
    inversePrimary: Colors.black,
  ),
);

ThemeData blueDarkTheme = ThemeData(
  colorScheme: ColorScheme.dark(
    primary: Colors.blue,
    secondary: Colors.blueAccent,
    surface: Colors.black,
    background: Colors.blue.shade900,
    onPrimary: Colors.black,
    onSecondary: Colors.black,
    onSurface: Colors.white,
    onBackground: Colors.white,
    inversePrimary: Colors.white,
  ),
);

ThemeData greenLightTheme = ThemeData(
  colorScheme: ColorScheme.light(
    primary: Colors.green,
    secondary: Colors.greenAccent,
    surface: Colors.white,
    background: Colors.green.shade50,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.black,
    onBackground: Colors.black,
    inversePrimary: Colors.black,
  ),
);

ThemeData greenDarkTheme = ThemeData(
  colorScheme: ColorScheme.dark(
    primary: Colors.green,
    secondary: Colors.greenAccent,
    surface: Colors.black,
    background: Colors.green.shade900,
    onPrimary: Colors.black,
    onSecondary: Colors.black,
    onSurface: Colors.white,
    onBackground: Colors.white,
    inversePrimary: Colors.white,
  ),
);

ThemeData purpleLightTheme = ThemeData(
  colorScheme: ColorScheme.light(
    primary: Colors.purple,
    secondary: Colors.purpleAccent,
    surface: Colors.white,
    background: Colors.purple.shade50,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.black,
    onBackground: Colors.black,
    inversePrimary: Colors.black,
  ),
);

ThemeData purpleDarkTheme = ThemeData(
  colorScheme: ColorScheme.dark(
    primary: Colors.purple,
    secondary: Colors.purpleAccent,
    surface: Colors.black,
    background: Colors.purple.shade900,
    onPrimary: Colors.black,
    onSecondary: Colors.black,
    onSurface: Colors.white,
    onBackground: Colors.white,
    inversePrimary: Colors.white,
  ),
);

ThemeData getLightTheme(String variant) {
  switch (variant) {
    case 'green':
      return greenLightTheme;
    case 'purple':
      return purpleLightTheme;
    case 'blue':
    default:
      return blueLightTheme;
  }
}

ThemeData getDarkTheme(String variant) {
  switch (variant) {
    case 'green':
      return greenDarkTheme;
    case 'purple':
      return purpleDarkTheme;
    case 'blue':
    default:
      return blueDarkTheme;
  }
}
