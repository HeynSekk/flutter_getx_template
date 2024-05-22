import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/app/core/values/text_styles.dart';

class AppBarTitle extends StatelessWidget {
  final String text;

  const AppBarTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.theme.textTheme.titleMedium!.copyWith(
        color: context.theme.colorScheme.onPrimary,
      ),
      textAlign: TextAlign.center,
    );
  }
}
