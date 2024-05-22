import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/app/core/values/app_values.dart';
import '/app/core/widget/elevated_container.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedContainer(
        bgColor: context.theme.colorScheme.surface,
        padding: const EdgeInsets.all(AppValues.margin),
        child: CircularProgressIndicator(
          color: Get.context!.theme.colorScheme.onSurface,
        ),
      ),
    );
  }
}
