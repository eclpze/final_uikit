import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vize/vize.dart';
import '../uikit.dart';

class Header extends StatelessWidget {
  final String name;
  final double? width;

  const Header({super.key, required this.name, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.fw,
      height: 58.fh,
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.darkenWhite, width: 1.fw),
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [BoxShadow(color: AppColors.shadow, blurRadius: 2, offset: Offset(0, 1))],
      ),
      child: Row(
        children: [
          SizedBox(
            height: 24.fh,
            width: width ?? 125.fw,
            child: Text(textAlign: TextAlign.end, name, style: Theme.of(context).textTheme.subheader),
          ),
        ],
      ),
    );
  }
}

class HeaderWithIcon extends StatelessWidget {
  final String name;
  final String icon1;
  final String icon2;
  final VoidCallback onIcon;

  const HeaderWithIcon({super.key, required this.name, required this.icon1, required this.icon2, required this.onIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.fw,
      height: 58.fh,
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.darkenWhite, width: 1.fw),
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [BoxShadow(color: AppColors.shadow, blurRadius: 2, offset: Offset(0, 1))],
      ),
      child: Padding(
        padding: pa(16),
        child: Row(
          children: [
            GestureDetector(
              onTap: onIcon,
              child: SvgPicture.asset(icon1, width: 16.fw, height: 16.fh),
            ),
            Spacing().getSpacing(0, Spacing.spacing16),
            SizedBox(
              height: 24.fh,
              child: Text(name, style: Theme.of(context).textTheme.subheader),
            ),
            Spacer(),
            SvgPicture.asset(icon2, width: 4.fw, height: 16.fh),
          ],
        ),
      ),
    );
  }
}
