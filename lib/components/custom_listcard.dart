import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uikit/colors.dart';
import 'package:uikit/logging.dart';
import 'package:uikit/spacing.dart';
import 'package:uikit/theme.dart';
import 'package:vize/vize.dart';

/// Состояние карточки
/// Автор создания: 2
/// Дата создания: 28.05.2026
enum CardType { model1, model2, model3, model4, model5 }

/// Класс отвечает за добавление карточки(вакансия/соискатель) с пятью разными типами
/// Автор создания: 2
/// Дата создания: 28.05.2026
class CustomListCard extends StatefulWidget {
  final CardType type; // Тип карточки
  final String text; // Текст
  final TextStyle textStyle; // Стиль текста
  final Color bg; // Цвет фона
  final Color colorBorder; // Цвет границ
  final double borderRadius; // Закругление границ
  final String photo; // Путь к фото
  final double widthPhoto; // Ширина фото
  final double heightPhoto; // Высота фото
  final String name; // Имя
  final String identity; // Профессия
  final TextStyle nameStyle; // Стиль текста
  final double width; // Ширина карточки
  final double height; // Высота карточки
  final TextStyle identityStyle; // Стиль текста
  final String? text1; // Текст
  final String? text2; // Текст
  final TextStyle? text2Style; // Стиль текста
  final String? team; // Команда
  final String? status; // Статус
  final String? money; // ЗП
  final String? people; // Люди
  final TextStyle? text1Style; // Стиль текста
  final TextStyle? peopleStyle; // Стиль текста
  final TextStyle? moneyStyle; // Стиль текста
  final TextStyle? statusStyle; // Стиль текста
  final Color? colorStatus; // Цвет статуса
  final String? pathPrefixIcon; // Путь к иконке
  final double? widthPrefixIcon; // Ширина иконки
  final double? heightPrefixIcon; // Высота иконки
  final String? pathSuffixIcon; // Путь к иконке
  final double? widthSuffixIcon; // Ширина иконки
  final double? heightSuffixIcon; // Высота иконки
  final String? experience; // Опыт
  final String? period; // Период
  final TextStyle? experienceStyle; // Стиль текста
  final TextStyle? periodStyle; // Стиль текста
  final String? iconPath; // Путь к иконке
  final TextStyle? text5; // Стиль текста
  final TextStyle? text6; // Стиль текста
  final String? iconArrow; // Путь к иконке
  final VoidCallback? onCard; // Действие при нажатии на карточку

  const CustomListCard({
    super.key,
    required this.text,
    required this.textStyle,
    required this.bg,
    required this.colorBorder,
    required this.borderRadius,
    required this.photo,
    required this.widthPhoto,
    required this.heightPhoto,
    required this.type,
    required this.name,
    required this.identity,
    required this.nameStyle,
    required this.identityStyle,
    required this.width,
    required this.height,
    this.text1,
    this.team,
    this.status,
    this.money,
    this.people,
    this.text1Style,
    this.peopleStyle,
    this.moneyStyle,
    this.statusStyle,
    this.colorStatus,
    this.pathPrefixIcon,
    this.widthPrefixIcon,
    this.heightPrefixIcon,
    this.pathSuffixIcon,
    this.widthSuffixIcon,
    this.heightSuffixIcon,
    this.text2,
    this.text2Style,
    this.experience,
    this.period,
    this.experienceStyle,
    this.periodStyle,
    this.iconPath,
    this.text5,
    this.text6,
    this.iconArrow,
    this.onCard,
  });

  @override
  State<CustomListCard> createState() => _CustomListCardState();
}

/// Класс отвечает за добавление состояния карточки(вакансия/соискатель) с пятью разными типами
/// Автор создания: 2
/// Дата создания: 28.05.2026
class _CustomListCardState extends State<CustomListCard> {
  @override
  void initState() {
    super.initState();
    Logging().info('CustomListCard', 'Инициализация', 'Карточка появилась на экране в первый раз');
  }

  @override
  Widget build(BuildContext context) {
    if (widget.type == CardType.model1) {
      return Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: AppColors.shadow, blurRadius: 12, offset: Offset(0, 4))],
          color: widget.bg,
          borderRadius: BorderRadius.circular(widget.borderRadius.r),
          border: Border.all(color: widget.colorBorder),
        ),
        child: Padding(
          padding: ps(v: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(widget.photo, width: widget.widthPhoto, height: widget.heightPhoto),
              Spacing().getSpacing(Spacing.spacing16, 0),
              Text(widget.name, style: widget.nameStyle),
              SizedBox(height: 4.fh),
              Text(widget.identity, style: widget.identityStyle),
            ],
          ),
        ),
      );
    }
    if (widget.type == CardType.model2) {
      return Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: AppColors.shadow, blurRadius: 12, offset: Offset(0, 4))],
          color: widget.bg,
          borderRadius: BorderRadius.circular(widget.borderRadius.r),
        ),
        child: Padding(
          padding: pa(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.identity, style: widget.identityStyle),
                      SizedBox(height: 4.fh),
                      Text(widget.text1!, style: widget.text1Style),
                    ],
                  ),
                  Spacer(),
                  Container(
                    width: 72.fw,
                    height: 24.fh,
                    decoration: BoxDecoration(color: widget.colorStatus, borderRadius: BorderRadius.circular(widget.borderRadius.r)),
                    child: Center(child: Text(widget.status!, style: widget.statusStyle)),
                  ),
                ],
              ),
              SizedBox(height: 16.fh),
              Divider(color: AppColors.darkenWhite),
              SizedBox(height: 16.fh),
              Row(
                children: [
                  SvgPicture.asset(widget.pathSuffixIcon!, width: widget.widthSuffixIcon?.fw, height: widget.heightSuffixIcon?.fh),
                  SizedBox(width: 4.fw),
                  Text(widget.money!, style: widget.moneyStyle),
                  SizedBox(width: 24.fw),
                  SvgPicture.asset(widget.pathPrefixIcon!, width: widget.widthPrefixIcon?.fw, height: widget.heightPrefixIcon?.fh),
                  SizedBox(width: 4.fw),
                  Text(widget.people!, style: widget.peopleStyle),
                ],
              ),
            ],
          ),
        ),
      );
    }

    if (widget.type == CardType.model4) {
      return Container(
        width: 358.fw,
        padding: pa(16),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: AppColors.grey, width: 1.fw),
          boxShadow: [BoxShadow(color: AppColors.shadow, blurRadius: 2, offset: Offset(0, 4))],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 324.fw,
              height: 72.fh,
              child: Row(
                children: [
                  Image.asset('assets/images/photo.png', width: 48.fw, height: 48.fh),
                  Spacing().getSpacing(0, Spacing.spacing16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.text, style: widget.textStyle),
                      SizedBox(height: 4.fh),
                      Row(
                        children: [
                          SvgPicture.asset(widget.pathPrefixIcon!, width: widget.widthPrefixIcon?.fw, height: widget.heightPrefixIcon?.fh),
                          SizedBox(width: 4.fw),
                          Text(widget.people!, style: widget.peopleStyle),
                          SizedBox(width: 18.02.fw),
                          SvgPicture.asset(widget.iconPath!, width: 13.333333015441895.fw, height: 13.333333015441895.fh),
                          SizedBox(width: 4.fw),
                          Text(widget.identity!, style: widget.identityStyle),
                        ],
                      ),
                      SizedBox(height: 4.fh),
                      Row(
                        children: [
                          SvgPicture.asset(widget.pathSuffixIcon!, width: widget.widthSuffixIcon?.fw, height: widget.heightSuffixIcon?.fh),
                          SizedBox(width: 4.fw),
                          Text(widget.money!, style: widget.moneyStyle),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacing().getSpacing(Spacing.spacing16, 0),
            Container(
              width: 324.fw,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: AppColors.grey, width: 1.fw),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 84.fw,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Spacing().getSpacing(Spacing.spacing16, 0),
                            Text('24', style: widget.text5),
                            Text('APPLICANTS', style: widget.text6),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      SizedBox(height: 32.fh),
                      SvgPicture.asset(widget.iconArrow!, width: 7.400000095367432.fw, height: 12.fh),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    } else {
      return Container(
        width: widget.width,
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: AppColors.shadow, blurRadius: 12, offset: Offset(0, 4))],
          color: widget.bg,
          borderRadius: BorderRadius.circular(widget.borderRadius.r),
        ),
        child: Padding(
          padding: pa(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.name, style: widget.nameStyle),
              SizedBox(height: 4.fh),
              Text(widget.identity, style: widget.identityStyle),
              SizedBox(height: 16.fh),
              Row(
                children: [
                  Container(
                    width: 99.fw,
                    height: 24.fh,
                    decoration: BoxDecoration(color: AppColors.darkenWhite, borderRadius: BorderRadius.circular(9999.r)),
                    child: Center(child: Text(widget.text1!, style: widget.text1Style)),
                  ),
                  SizedBox(width: 4.fw),
                  Container(
                    width: 99.fw,
                    height: 24.fh,
                    decoration: BoxDecoration(color: AppColors.darkenWhite, borderRadius: BorderRadius.circular(9999.r)),
                    child: Center(child: Text(widget.text2!, style: widget.text2Style)),
                  ),
                ],
              ),
              SizedBox(height: 24.fh),
              Divider(color: AppColors.darkenWhite),
              SizedBox(height: 17.fh),
              Row(
                children: [
                  Container(
                    width: 142.fw,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Experience', style: Theme.of(context).textTheme.fieldLabel.copyWith(color: AppColors.secondary)),
                        Text(widget.experience!, style: widget.experienceStyle),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 142.fw,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Notice Period', style: Theme.of(context).textTheme.fieldLabel.copyWith(color: AppColors.secondary)),
                        Text(widget.period!, style: widget.periodStyle),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }
  }
}
