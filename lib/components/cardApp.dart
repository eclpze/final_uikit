import 'package:flutter/material.dart';
import 'package:vize/vize.dart';
import '../uikit.dart';

class CardApp extends StatelessWidget {
  final String icon1;
  final String icon2;
  final String icon3;
  final String icon4;

  const CardApp({super.key, required this.icon1, required this.icon2, required this.icon3, required this.icon4});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358.fw,
      height: 168.fh,
      padding: pa(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.darkenWhite, width: 1.fw),
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [BoxShadow(color: AppColors.shadow, blurRadius: 12, offset: Offset(0, 4))],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 48.fh,
            width: 324.fw,
            child: Row(
              children: [
                Image.asset(icon1, width: 48.fw, height: 48.fh),
                Spacing().getSpacing(0, Spacing.spacing16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Alexander Volkov', style: Theme.of(context).textTheme.fieldLabel),
                    Text('Senior Product', style: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColors.secondary)),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Container(
                      width: 86.fw,
                      height: 24.fh,
                      decoration: BoxDecoration(color: AppColors.grey, borderRadius: BorderRadius.circular(4.r)),
                      child: Center(
                        child: Text(
                          'Интервью',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.fieldLabel.copyWith(color: AppColors.darkenWhite),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacing().getSpacing(Spacing.spacing8, 0),
          Row(
            children: [
              Image.asset(icon2, width: 12.fw, height: 15.fh),
              SizedBox(width: 4.fw),
              Text('San Francisco, CA', style: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColors.secondary)),
            ],
          ),
          Spacer(),
          Row(
            children: [
              Image.asset(icon3, width: 13.5.fw, height: 13.5.fh),
              SizedBox(width: 4.fw),
              Text('+1 415 555 0128', style: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColors.secondary)),
              SizedBox(width: 4.fw),
              Image.asset(icon4, width: 19.333332061767578.fw, height: 21.333332061767578.fh),
            ],
          ),
        ],
      ),
    );
  }
}
