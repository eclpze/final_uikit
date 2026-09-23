import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uikit/colors.dart';
import 'package:uikit/logging.dart';
import 'package:vize/vize.dart';

/// Класс отвечает за добавление хедера
/// Автор создания: 2
/// Дата создания: 28.05.2026
class CustomHeader extends StatelessWidget {
  final double width; // Ширина
  final double height; // Высота
  final String pathIcon; // Путь к иконке
  final double widthIcon; // Ширина иконки
  final double heightIcon; // Высота иконки
  final String text; // Текст
  final TextStyle textStyle; // Стиль текста
  final String pathPhoto; // Путь к фото
  final double widthPhoto; // Ширина фото
  final double heightPhoto; // Высота фото
  final Color bg; // Цвет фона
  final VoidCallback onIcon; // Действие при нажатии на иконку

  const CustomHeader({
    super.key,
    required this.width,
    required this.height,
    required this.pathIcon,
    required this.widthIcon,
    required this.heightIcon,
    required this.text,
    required this.textStyle,
    required this.pathPhoto,
    required this.widthPhoto,
    required this.heightPhoto,
    required this.bg,
    required this.onIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.fw,
      height: height.fh,
      decoration: BoxDecoration(
        color: bg,
        boxShadow: [BoxShadow(offset: Offset(0, 4), blurRadius: 12.0, spreadRadius: 0, color: AppColors.shadow)],
      ),
      child: Padding(
        padding: ps(h: 20),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                onIcon();
                Logging().info('CustomHeader', 'Нажатие', 'Произошло нажатие на иконку');
              },
              child: SvgPicture.asset(pathIcon, width: widthIcon.fw, height: heightIcon.fh),
            ),
            SizedBox(width: 12.fw),
            Text(text, style: textStyle),
            Spacer(),
            Container(
              width: widthPhoto.fw,
              height: heightPhoto.fh,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage(pathPhoto)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
