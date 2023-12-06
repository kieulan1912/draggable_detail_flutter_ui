import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:draggable_detail_ui/config/colors.dart';
import 'package:draggable_detail_ui/screens/recipe_detail/draggable_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Draggable Detail',
      debugShowCheckedModeBanner: false,
      theme: kAppThemeData,
      home: const DraggableDetailScreen(),
    );
  }
}

final ThemeData kAppThemeData = _buildThemeData();

ThemeData _buildThemeData() {
  final base = ThemeData.light();
  final baseTextTheme = GoogleFonts.interTextTheme(base.textTheme);
  return base.copyWith(
    scaffoldBackgroundColor: Colors.white,
    textTheme: baseTextTheme.copyWith(
      titleLarge: baseTextTheme.titleLarge!.copyWith(
        height: 32.0 / 22.0,
        fontWeight: FontWeight.bold,
        color: kMainTextColor,
        letterSpacing: 0.5,
      ),
      titleMedium: baseTextTheme.titleMedium!.copyWith(
        fontSize: 17.0,
        height: 27.0 / 17.0,
        color: kMainTextColor,
        letterSpacing: 0.5,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: baseTextTheme.titleSmall!.copyWith(
        fontSize: 15.0,
        height: 25.0 / 15.0,
        fontWeight: FontWeight.bold,
        color: kMainTextColor,
        letterSpacing: 0.5,
      ),
      bodyLarge: baseTextTheme.bodyLarge!.copyWith(
        fontSize: 17.0,
        height: 27.0 / 17.0,
        color: kMainTextColor,
        letterSpacing: 0.5,
      ),
      bodyMedium: baseTextTheme.bodyMedium!.copyWith(
        fontSize: 15.0,
        height: 25.0 / 15.0,
        color: kMainTextColor,
        letterSpacing: 0.5,
      ),
      bodySmall: baseTextTheme.bodySmall!.copyWith(
        height: 15.0 / 12.0,
        color: kMainTextColor,
        letterSpacing: 0.5,
      ),
    ),
  );
}
