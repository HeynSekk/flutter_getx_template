import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/app/core/values/app_colors.dart';
import '/app/core/values/app_values.dart';

class ElevatedContainer extends StatelessWidget {
  final Widget child;
  final Color bgColor;
  final EdgeInsetsGeometry? padding;
  final double borderRadius;

  const ElevatedContainer({
    Key? key,
    required this.child,
    this.bgColor = AppColors.pageBackground,
    this.padding,
    this.borderRadius = AppValues.smallRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: [
            BoxShadow(
              // color: AppColors.elevatedContainerColorOpacity,
              color: context.theme.colorScheme.shadow,
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 1), // changes position of shadow
            ),
          ],
          color: bgColor),
      child: child,
    );
  }
}
