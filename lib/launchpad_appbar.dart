import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LaunchPadAppbar extends StatelessWidget implements PreferredSizeWidget {
  const LaunchPadAppbar({
    super.key,
    required this.title,

    required this.colr,
    required this.styl,
  });

  final String title;
  final ColorScheme colr;
  final TextTheme styl;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: colr.primary,
      toolbarHeight: 80,
      title: Text(
        title,
        style: GoogleFonts.orbitron(
          textStyle: styl.headlineLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: colr.onPrimary,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
