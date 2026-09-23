import 'dart:math';
import 'package:flutter/material.dart';
import 'package:uikit/logging.dart';
import 'package:vize/vize.dart';

/// Состояние кнопок
/// Автор создания: 2
/// Дата создания: 28.05.2026
enum ButtonType { primary, disabled, secondary, destructive }

/// Класс отвечает за добавление кнопки с различными состояниями
/// Автор создания: 2
/// Дата создания: 28.05.2026
class CustomButton extends StatelessWidget {
  final ButtonType type; // Тип кнопки
  final String text; // Текст
  final TextStyle textStyle; // Стиль текста
  final Color bg; // Цвет фона
  final Color? colorBorder; // Цвет границ
  final double borderRadius; // Закругление границ
  final double width; // Ширина
  final double height; // Высота
  final VoidCallback onButton; // Действие при нажатии на кнопку
  final Color? noiseColor; // Цвет шума

  const CustomButton({
    super.key,
    required this.text,
    required this.textStyle,
    required this.bg,
    this.colorBorder,
    required this.borderRadius,
    required this.width,
    required this.height,
    required this.onButton,
    required this.type,
    this.noiseColor,
  });

  @override
  Widget build(BuildContext context) {
    if (type == ButtonType.disabled) {
      return GestureDetector(
        onTap: onButton,
        child: Container(
          width: width.fw,
          height: height.fh,
          decoration: BoxDecoration(color: bg, borderRadius: BorderRadius.circular(borderRadius.r)),
          child: Stack(
            children: [
              CustomPaint(painter: NoiseEffect(noiseColor!), size: Size(width, height)),
              Center(child: Text(text, style: textStyle)),
            ],
          ),
        ),
      );
    } else {
      return GestureDetector(
        onTap: () {
          onButton();
          Logging().info('CustomButton', 'Нажатие', 'Произошло нажатие на кнпоку');
        },
        child: Container(
          width: width.fw,
          height: height.fh,
          decoration: BoxDecoration(
            color: bg,
            border: (type == ButtonType.secondary) ? Border.all(color: colorBorder!, width: 2.fw) : null,
            borderRadius: BorderRadius.circular(borderRadius.r),
          ),
          child: Center(child: Text(text, style: textStyle)),
        ),
      );
    }
  }
}

/// Класс отвечает за добавление эффекта шума
/// Автор создания: 2
/// Дата создания: 28.05.2026
class NoiseEffect extends CustomPainter {
  final Color noiseColor;

  NoiseEffect(this.noiseColor);

  @override
  /// Рисование эффекта щума
  /// Автор создания: 2
  /// Дата создания: 28.05.2026∆
  /// Входные параметры:  canvas и размеры
  /// Возращаемые данные: эффект шума
  void paint(Canvas canvas, Size size) {
    final Random rdm = Random();
    final Paint paint = Paint()..color = noiseColor;
    const count = 500;

    for (int i = 0; i < count; i++) {
      final double x = rdm.nextDouble() * size.width;
      final double y = rdm.nextDouble() * size.height;

      canvas.drawRect(Rect.fromCenter(center: Offset(x, y), width: 0.5.fw, height: 0.5.fh), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
