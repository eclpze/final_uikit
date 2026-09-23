import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uikit/colors.dart';
import 'package:uikit/logging.dart';
import 'package:vize/vize.dart';

/// Состояние навигации
/// Автор создания: 2
/// Дата создания: 28.05.2026
enum BottomBarType { main, secondary }

/// Класс отвечает за добавление навигации с двумя разными типами
/// Автор создания: 2
/// Дата создания: 28.05.2026
class CustomBottomBar extends StatefulWidget {
  final BottomBarType type; // Тип боттомбара
  final double width; // Тип навигации
  final double height; // Ширина
  final String? pathIcon; // Высота
  final double? widthIcon; // Путь к иконке
  final double? heightIcon; // Ширина иконки
  final String? text; // Высота иконки
  final TextStyle? textStyle; // Текст
  final String? text2; // Стиль текста
  final TextStyle? textStyle2; // Текст
  final String? pathIcon2; // Стиль текста
  final double? widthIcon2; // Путь к иконке
  final double? heightIcon2; // Ширина иконки
  final double? borderRadius; // Высота иконки
  final Color bg; // Закругление кнопки
  final Color? bgButton; // Цвет фона
  final double? widthButton; // Цвет кнопки
  final double? heightButton; // Ширина кнопки
  final int? index; // Высота кнопки
  final List<String>? icons; // Выбранный индекс
  final List<String>? titles; // Список иконок
  final ValueChanged? onTap; // Список заголовков
  final Color? activeColor; // Действие при нажатии на раздел
  final Color? unActiveColor; // Активный цвет
  final TextStyle? activeStyle; // Неактивный цвет
  final TextStyle? unActiveStyle; // Активный стиль
  final List<double>? widthIconList; // Неактивный стиль
  final List<double>? heightIconList; // Список ширин иконок
  final VoidCallback? onButton; // Список высот иконок

  const CustomBottomBar({
    super.key,
    required this.type,
    required this.width,
    required this.height,
    this.pathIcon,
    this.widthIcon,
    this.heightIcon,
    this.text,
    this.textStyle,
    this.pathIcon2,
    this.widthIcon2,
    this.heightIcon2,
    this.text2,
    this.textStyle2,
    this.borderRadius,
    required this.bg,
    this.bgButton,
    this.widthButton,
    this.heightButton,
    this.index,
    this.icons,
    this.titles,
    this.onTap,
    this.activeColor,
    this.unActiveColor,
    this.activeStyle,
    this.unActiveStyle,
    this.widthIconList,
    this.heightIconList,
    this.onButton,
  });

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

/// Класс отвечает за добавление состояния навигации с двумя разными типами
/// Автор создания: 2
/// Дата создания: 28.05.2026
class _CustomBottomBarState extends State<CustomBottomBar> {
  @override
  void initState() {
    super.initState();
    Logging().info('CustomBottomBar', 'Инициализация', 'Навигация появилась на экране в первый раз');
  }

  @override
  Widget build(BuildContext context) {
    if (widget.type == BottomBarType.secondary) {
      return Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: widget.bg,
          border: Border(top: BorderSide(color: AppColors.darkenWhite)),
          boxShadow: [BoxShadow(color: AppColors.shadow, blurRadius: 12, offset: Offset(0, -4))],
        ),
        child: Padding(
          padding: po(l: 48.11, r: 43.89),
          child: Row(
            children: [
              Padding(
                padding: ps(v: 18.5),
                child: SizedBox(
                  width: 125.fw,
                  height: 42.fh,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(widget.pathIcon!, width: widget.widthIcon, height: widget.heightIcon),
                      Text(widget.text!, style: widget.textStyle),
                    ],
                  ),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: widget.onButton,
                child: Container(
                  width: widget.widthButton,
                  height: widget.heightButton,
                  decoration: BoxDecoration(color: widget.bgButton, borderRadius: BorderRadius.circular(widget.borderRadius!)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(widget.pathIcon2!, width: widget.widthIcon2, height: widget.heightIcon2),
                      Text(widget.text2!, style: widget.textStyle2),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Container(
        decoration: BoxDecoration(
          color: widget.bg,
          border: Border(top: BorderSide(color: AppColors.darkenWhite)),
          boxShadow: [BoxShadow(color: AppColors.shadow, blurRadius: 12, offset: Offset(0, -4))],
        ),
        child: BottomNavigationBar(
          backgroundColor: widget.bg,
          unselectedLabelStyle: widget.unActiveStyle,
          unselectedItemColor: widget.unActiveColor,
          selectedLabelStyle: widget.activeStyle,
          selectedItemColor: widget.activeColor,
          currentIndex: widget.index!,
          onTap: (value) {
            widget.onTap;
          },
          items: List.generate(widget.icons!.length, (index) {
            return BottomNavigationBarItem(
              icon: Image.asset(width: widget.widthIconList![index], height: widget.heightIconList![index], widget.icons![index], color: widget.index == index ? AppColors.primary : AppColors.secondary),
              label: widget.titles![index],
            );
          }),
        ),
      );
    }
  }
}
