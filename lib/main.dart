import 'package:flutter/material.dart';
import 'presentation/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portifólio',
      theme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.dark(
          surface: Colors.black,
          primary: Colors.amber,
          secondary: Colors.blueGrey.shade900,
          tertiary: Colors.blueGrey.shade200
        ),
        cardTheme: const CardTheme(
          color: Color.fromARGB(20, 20, 20, 20)
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white, // Text color for dark theme
          ),
        )
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}


