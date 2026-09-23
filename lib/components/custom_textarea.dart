import 'package:flutter/material.dart';
import 'package:vize/vize.dart';

/// Класс отвечает за добавление текста с границами
/// Автор создания: 2
/// Дата создания: 28.05.2026
class CustomTextarea extends StatelessWidget {
  final String text; // Текст
  final TextStyle textStyle; // Текстовый стиль
  final Color bg; // Цвет фона
  final Color colorBorder; // Цвет границ
  final double borderRadius; // Закругление границ
  final double width; // Ширина
  final double height; // Высота

  const CustomTextarea({super.key, required this.text, required this.textStyle, required this.bg, required this.colorBorder, required this.borderRadius, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.fh,
      width: width.fw,
      decoration: BoxDecoration(
        color: bg,
        border: Border.all(color: colorBorder, width: 1.fw),
        borderRadius: BorderRadius.circular(borderRadius.r),
      ),
      child: Padding(
        padding: pa(16),
        child: Text(text, textAlign: TextAlign.start, style: textStyle),
      ),
    );
  }
}
