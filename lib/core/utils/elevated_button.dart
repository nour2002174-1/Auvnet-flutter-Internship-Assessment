import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants.dart';

abstract class Elevatedbuttons {
  static Widget blue_elevatedbutton({
    required String text,
    VoidCallback? onPressed, // ✅ Nullable onPressed
  }) {
    return SizedBox(
      width: 295,
      height: 54,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(10),
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          text,
          style: GoogleFonts.rubik(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
