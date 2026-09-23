import 'package:flutter/material.dart';
import 'package:vize/vize.dart';

/// Класс отвечает за добавление отступов в виде констант
/// Автор создания: 2
/// Дата создания: 28.05.2026
class Spacing {
  static const spacing8 = 8;
  static const spacing16 = 16;

  // Создание отступов
  // Автор создания: 2
  // Дата создания: 28.05.2026∆
  // Входные параметры: значение высоты и ширины
  // Возращаемые данные: отступ с констаными значениями
  SizedBox getSpacing(int valueHeight, int valueWidth) {
    return SizedBox(height: valueHeight.fh, width: valueWidth.fw);
  }
}
