import 'package:flutter/material.dart';
import 'package:vize/vize.dart';
import '../uikit.dart';

class Docs extends StatelessWidget {
  final String name;
  final String icon1;
  final String icon2;

  const Docs({super.key, required this.name, required this.icon1, required this.icon2});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358.fw,
      padding: pa(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.darkenWhite, width: 1.fw),
      ),
      child: Row(
        children: [
          Image.asset(icon1, width: 16.fw, height: 20.fh),
          Spacing().getSpacing(0, Spacing.spacing16),
          Text(name, style: Theme.of(context).textTheme.bodyMedium),
          Spacer(),
          Image.asset(icon2, width: 16.fw, height: 16.fh),
        ],
      ),
    );
  }
}
