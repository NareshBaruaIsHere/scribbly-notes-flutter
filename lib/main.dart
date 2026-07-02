import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'screens/notes_list_screen.dart';
import 'theme/neumorphic_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ScribblyApp());
}

class ScribblyApp extends StatelessWidget {
  const ScribblyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scribbly Notes',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        scaffoldBackgroundColor: NeumorphicColors.light.background,
        colorScheme: ColorScheme.light(
          surface: NeumorphicColors.light.background,
          onSurface: NeumorphicColors.light.text,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: NeumorphicColors.light.background,
          foregroundColor: NeumorphicColors.light.text,
          centerTitle: true,
          elevation: 0,
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: NeumorphicColors.dark.background,
        colorScheme: ColorScheme.dark(
          surface: NeumorphicColors.dark.background,
          onSurface: NeumorphicColors.dark.text,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: NeumorphicColors.dark.background,
          foregroundColor: NeumorphicColors.dark.text,
          centerTitle: true,
          elevation: 0,
        ),
      ),
      home: const NotesListScreen(),
    );
  }
}
