import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vize/vize.dart';

/// Состояние текстовых полей
/// Автор создания: 2
/// Дата создания: 28.05.2026
enum InputType { defaultInput, focusedState, errorState, disabledInput, password, searching }

/// Класс отвечает за добавление текстового поля с различными состояниями
/// Автор создания: 2
/// Дата создания: 28.05.2026
class CustomInput extends StatefulWidget {
  final InputType type; // Тип текстового поля
  final TextEditingController controller; // Контроллер
  final Color bg; // Цвет фона
  final String? label; // Заголовок
  final TextStyle? labelStyle; // Стиль заголовка
  final String hint; // Текст-подсказка
  final TextStyle hintStyle; // Стиль текста-подсказки
  final Color borderColor; // Цвет границ
  final Color focusBorderColor; // Цвет границ при фокусе
  final Color errorBorderColor; // Цвет границ при ошибке
  final String? errorText; // Текст ошибки
  final String? pathPrefixIcon; // Путь к иконке
  final double? widthPrefixIcon; // Ширина иконки
  final double? heightPrefixIcon; // Высота иконки
  final String? pathSuffixIcon; // Путь к иконке
  final double? widthSuffixIcon; // Ширина иконки
  final double? heightSuffixIcon; // Высота иконки
  final bool isEnabled; // Состояние Disabled
  final bool isPassword; // Состояние Password
  final double width; // Ширина текстового поля
  final double borderRadius; // Закгруление границ
  final double? paddingPref; // Отступ
  final double? paddingSuf; // Отступ

  const CustomInput({
    super.key,
    required this.type,
    required this.controller,
    required this.bg,
    this.label,
    this.labelStyle,
    required this.hint,
    required this.hintStyle,
    required this.borderColor,
    required this.focusBorderColor,
    required this.errorBorderColor,
    this.errorText,
    this.pathPrefixIcon,
    this.widthPrefixIcon,
    this.heightPrefixIcon,
    this.pathSuffixIcon,
    this.widthSuffixIcon,
    this.heightSuffixIcon,
    required this.isEnabled,
    required this.isPassword,
    required this.width,
    required this.borderRadius,
    this.paddingPref,
    this.paddingSuf,
  });

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  bool checkPassword = false;

  @override
  Widget build(BuildContext context) {
    bool hasError = widget.errorText!.isNotEmpty;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null) Text(widget.label!, style: widget.labelStyle),
        if (widget.label != null) SizedBox(height: 4.fh),
        SizedBox(
          width: widget.width.fw,
          child: TextField(
            enabled: widget.isEnabled,
            controller: widget.controller,
            obscureText: widget.type == InputType.password ? widget.isPassword : checkPassword,
            decoration: InputDecoration(
              fillColor: widget.bg,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius.r),
                borderSide: BorderSide(color: hasError ? widget.errorBorderColor : widget.borderColor, width: 1.fw),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius.r),
                borderSide: BorderSide(color: hasError ? widget.errorBorderColor : widget.focusBorderColor, width: 1.fw),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius.r),
                borderSide: BorderSide(color: hasError ? widget.errorBorderColor : widget.borderColor, width: 1.fw),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius.r),
                borderSide: BorderSide(color: hasError ? widget.errorBorderColor : widget.borderColor, width: 1.fw),
              ),
              hintText: widget.hint,
              hintStyle: widget.hintStyle,
              contentPadding: po(l: 16, t: 12),
              suffixIcon: widget.type == InputType.password
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          checkPassword = !checkPassword;
                        });
                      },
                      child: Padding(
                        padding: pa(widget.paddingSuf != null ? widget.paddingSuf! : 13),
                        child: SvgPicture.asset(widget.pathSuffixIcon!, width: widget.widthSuffixIcon, height: widget.heightSuffixIcon),
                      ),
                    )
                  : null,
              prefixIcon: widget.type == InputType.searching
                  ? Padding(
                      padding: pa(widget.paddingPref != null ? widget.paddingPref! : 14),
                      child: SvgPicture.asset(widget.pathPrefixIcon!, width: widget.widthPrefixIcon, height: widget.heightPrefixIcon),
                    )
                  : null,
            ),
          ),
        ),
        if (widget.errorText!.isNotEmpty) SizedBox(height: 4.fh),
        if (widget.errorText!.isNotEmpty) Text(widget.errorText!, style: widget.labelStyle!.copyWith(color: widget.errorBorderColor)),
      ],
    );
  }
}
