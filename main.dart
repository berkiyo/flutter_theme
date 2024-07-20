import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart';
import 'theme.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      theme: getLightTheme(themeProvider.themeVariant),
      darkTheme: getDarkTheme(themeProvider.themeVariant),
      themeMode: themeProvider.themeMode,
      home: ThemePickerPage(),
    );
  }
}

class ThemePickerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Picker Example'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              margin: const EdgeInsets.only(left: 25, right: 25, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Toggle Dark Mode",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  CupertinoSwitch(
                    value: themeProvider.themeMode == ThemeMode.dark,
                    onChanged: (value) => themeProvider.toggleThemeMode(),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () => _showThemePickerDialog(context),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                margin: const EdgeInsets.only(left: 25, right: 25, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Pick Theme Variant",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showThemePickerDialog(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    String tempSelectedTheme = themeProvider.themeVariant;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Theme Picker'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: const Text('Blue'),
                leading: Radio<String>(
                  value: 'blue',
                  groupValue: tempSelectedTheme,
                  onChanged: (String? value) {
                    tempSelectedTheme = value ?? 'blue';
                    themeProvider.setThemeVariant(tempSelectedTheme);
                    Navigator.of(context).pop();
                  },
                ),
              ),
              ListTile(
                title: const Text('Green'),
                leading: Radio<String>(
                  value: 'green',
                  groupValue: tempSelectedTheme,
                  onChanged: (String? value) {
                    tempSelectedTheme = value ?? 'green';
                    themeProvider.setThemeVariant(tempSelectedTheme);
                    Navigator.of(context).pop();
                  },
                ),
              ),
              ListTile(
                title: const Text('Purple'),
                leading: Radio<String>(
                  value: 'purple',
                  groupValue: tempSelectedTheme,
                  onChanged: (String? value) {
                    tempSelectedTheme = value ?? 'purple';
                    themeProvider.setThemeVariant(tempSelectedTheme);
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
