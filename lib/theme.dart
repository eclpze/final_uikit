import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';
import 'package:vize/vize.dart';

/// Расширение отвечает за добавление новых текстовых стилей в TextTheme
/// Автор создания: 2
/// Дата создания: 28.05.2026
extension TextStyleExtension on TextTheme {
  // Текстовый стиль screenHeader как на макете
  TextStyle get screenHeader {
    return TextStyle(fontFamily: 'Manrope', fontWeight: FontWeight.w700, fontSize: 24.fh, height: 32.fh / 24.fh, letterSpacing: -0.48.fw, color: AppColors.black);
  }

  // Текстовый стиль subheader как на макете
  TextStyle get subheader {
    return TextStyle(fontFamily: 'Manrope', fontWeight: FontWeight.w600, fontSize: 18.fh, height: 24.fh / 18.fh, letterSpacing: -0.18.fw, color: AppColors.black);
  }

  // Текстовый стиль fieldLabel как на макете
  TextStyle get fieldLabel {
    return TextStyle(fontFamily: 'Manrope', fontWeight: FontWeight.w600, fontSize: 14.fh, height: 20.fh / 14.fh, letterSpacing: 0.fw, color: AppColors.black);
  }

  // Текстовый стиль text как на макете
  TextStyle get text {
    return TextStyle(fontFamily: 'Manrope', fontWeight: FontWeight.w700, fontSize: 18.fh, height: 28.fh / 18.fh, letterSpacing: -0.45.fw, color: AppColors.black);
  }

  // Текстовый стиль title как на макете
  TextStyle get title {
    return TextStyle(fontFamily: 'Manrope', fontWeight: FontWeight.w500, fontSize: 12.fh, height: 16.fh / 12.fh, letterSpacing: 0.fw, color: AppColors.black);
  }

  // Текстовый стиль title1 как на макете
  TextStyle get title1 {
    return TextStyle(fontFamily: 'Manrope', fontWeight: FontWeight.w600, fontSize: 16.fh, height: 20.fh / 16.fh, letterSpacing: 0.fw, color: AppColors.black);
  }
}

/// Класс отвечает за добавление новых текстовых стилей в TextTheme
/// Автор создания: 2
/// Дата создания: 28.05.2026
class AppTypography {
  // Текстовый стиль bodyMedium как на макете
  static TextStyle bodyMedium = TextStyle(fontFamily: 'Manrope', fontWeight: FontWeight.w400, fontSize: 16.fh, height: 24.fh / 16.fh, letterSpacing: 0.fw, color: AppColors.black);

  // Текстовый стиль bodySmall как на макете
  static TextStyle bodySmall = TextStyle(fontFamily: 'Manrope', fontWeight: FontWeight.w400, fontSize: 14.fh, height: 20.fh / 14.fh, letterSpacing: 0.fw, color: AppColors.black);
}
