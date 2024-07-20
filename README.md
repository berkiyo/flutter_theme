# flutter_theme
Boilerplate for creating flutter themes with shared_preferences. 

The theme selection is done with "AlertDialog".

Both dark and light variants are available and the state is stored thakns to the "shared_preferences" library.

## requirements
Import "shared_preferences"

```
import 'package:shared_preferences/shared_preferences.dart';
```

## explanation

- theme_provider.dart: Manages the state of the theme mode and variant, loads them from shared_preferences on startup, and saves them when changed.

- theme.dart: Contains the theme definitions and helper functions to get the correct theme based on the variant.

- main.dart: Uses the ThemeProvider to set the theme of the app and includes UI elements to switch between light and dark modes and select theme variants.