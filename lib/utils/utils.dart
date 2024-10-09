import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme createTextTheme(
    BuildContext context, String bodyFontString, String displayFontString) {
  TextTheme baseTextTheme = Theme.of(context).textTheme;
  TextTheme bodyTextTheme =
      GoogleFonts.getTextTheme(bodyFontString, baseTextTheme);
  TextTheme displayTextTheme =
      GoogleFonts.getTextTheme(displayFontString, baseTextTheme);
  TextTheme textTheme = displayTextTheme.copyWith(
    bodyLarge: bodyTextTheme.bodyLarge!
        .copyWith(color: Theme.of(context).primaryColor),
    bodyMedium: bodyTextTheme.bodyMedium!
        .copyWith(color: Theme.of(context).primaryColor),
    bodySmall: bodyTextTheme.bodySmall!
        .copyWith(color: Theme.of(context).primaryColor),
    labelLarge: bodyTextTheme.labelLarge!
        .copyWith(color: Theme.of(context).primaryColor),
    labelMedium: bodyTextTheme.labelMedium!
        .copyWith(color: Theme.of(context).primaryColor),
    labelSmall: bodyTextTheme.labelSmall!
        .copyWith(color: Theme.of(context).primaryColor),
  );
  return textTheme;
}
