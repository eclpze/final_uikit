import 'package:flutter/material.dart';
import 'package:vize/vize.dart';
import '../uikit.dart';

class Box extends StatelessWidget {
  final String name;
  final String text;

  const Box({super.key, required this.name, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175.fw,
      padding: pa(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [BoxShadow(color: AppColors.shadow, blurRadius: 12, offset: Offset(0, 4))],
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.darkenWhite, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: Theme.of(context).textTheme.fieldLabel.copyWith(color: AppColors.secondary)),
          SizedBox(height: 4.fh),
          Text(text, style: Theme.of(context).textTheme.fieldLabel),
        ],
      ),
    );
  }
}

class BoxFilled extends StatelessWidget {
  final String name;
  final String text;
  final String icon;
  final double width;
  final double height;

  const BoxFilled({super.key, required this.name, required this.text, required this.icon, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175.fw,
      padding: pa(16),
      decoration: BoxDecoration(color: AppColors.grey, borderRadius: BorderRadius.circular(8.r)),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(icon, width: width, height: height),
            Spacing().getSpacing(Spacing.spacing8, 0),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColors.secondary, fontWeight: FontWeight.w600),
            ),
            Text(name, style: Theme.of(context).textTheme.screenHeader),
          ],
        ),
      ),
    );
  }
}
