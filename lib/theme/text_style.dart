import 'package:flutter/cupertino.dart';

import 'colors.dart';

abstract class AppTextStyly {
  static const TextStyle nunito16w400 = TextStyle(
      letterSpacing: -0.40,
      fontSize: 16,
      color: AppColors.colorA9A7A7,
      fontFamily: 'Nunito');

  static const TextStyle nunito40w700 = TextStyle(
      letterSpacing: 0.37,
      fontSize: 40,
      fontWeight: FontWeight.w700,
      color: AppColors.color000000,
      fontFamily: 'Nunito');
}
