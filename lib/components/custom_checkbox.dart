import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uikit/logging.dart';
import 'package:vize/vize.dart';

/// Состояние чекбоксов
/// Автор создания: 2
/// Дата создания: 28.05.2026
enum CheckBoxType { checked, unchecked, disabled }

/// Класс отвечает за добавление чекбокса с тремя разными типами
/// Автор создания: 2
/// Дата создания: 28.05.2026
class CustomCheckBox extends StatefulWidget {
  final CheckBoxType type; // Тип чекбокса
  final double size; // Размер чекбокса
  final Color checkedColor; // Цвет активного чекбокса
  final Color unCheckedColor; // Цвет неактивного чекбокса
  final Color disabledColor; // Цвет заблокированного чекбокса
  final String pathIcon; // Путь к иконке
  final double widthIcon; // Ширина иконки
  final double heightIcon; // Высота иконки
  final Color checkedBg; // Фон активного чекбокса
  final Color unCheckedBg; // Фон неактивного чекбокса
  final Color disabledBg; // Фон заблокированного чекбокса
  final double borderRadius; // Закругление чекбокса
  final VoidCallback onTap; // Действие при нажатии на чекбокс

  const CustomCheckBox({
    super.key,
    required this.size,
    required this.checkedColor,
    required this.unCheckedColor,
    required this.disabledColor,
    required this.pathIcon,
    required this.widthIcon,
    required this.heightIcon,
    required this.checkedBg,
    required this.unCheckedBg,
    required this.disabledBg,
    required this.type,
    required this.borderRadius,
    required this.onTap,
  });

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  @override
  void initState() {
    Logging().info('CustomCheckBox', 'Инициализация', 'Чекбокс появился на экране в первый раз');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.type == CheckBoxType.disabled) {
      return Container(
        width: widget.size.fh,
        height: widget.size.fh,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          color: widget.disabledBg,
          border: Border.all(width: 2.fw, color: widget.disabledColor),
        ),
      );
    } else {
      return GestureDetector(
        onTap: () {
          widget.onTap();
          Logging().info('CustomCheckBox', 'Нажатие', 'Произошло нажатие на чекбокс');
        },
        child: Container(
          width: widget.size.fh,
          height: widget.size.fh,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            color: (widget.type == CheckBoxType.checked) ? widget.checkedBg : widget.unCheckedBg,
            border: Border.all(width: 2.fw, color: (widget.type == CheckBoxType.checked) ? widget.checkedColor : widget.unCheckedColor),
          ),
          child: (widget.type == CheckBoxType.checked) ? Padding(padding: pa(6), child: SvgPicture.asset(widget.pathIcon)) : null,
        ),
      );
    }
  }
}
