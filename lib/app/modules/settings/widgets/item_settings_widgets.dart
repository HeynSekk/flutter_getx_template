import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/app/core/base/base_widget_mixin.dart';
import '/app/core/values/app_values.dart';
import '/app/core/widget/asset_image_view.dart';
import '/app/core/widget/ripple.dart';

class ItemSettings extends StatelessWidget with BaseWidgetMixin {
  final String prefixImage;
  final String? suffixImage;
  final String title;
  final Widget? suffixWidget;
  final Function()? onTap;

  ItemSettings({
    required this.prefixImage,
    this.suffixImage,
    this.suffixWidget,
    required this.title,
    required this.onTap,
  });

  @override
  Widget body(BuildContext context) {
    return Ripple(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(AppValues.padding),
        child: Row(
          children: [
            AssetImageView(
              fileName: prefixImage,
              height: AppValues.iconSize_20,
              width: AppValues.iconSize_20,
              color: context.theme.colorScheme.onBackground,
            ),
            const SizedBox(width: AppValues.smallPadding),
            Text(
              title,
              style: Get.context!.textTheme.titleMedium!.copyWith(
                color: Get.context!.theme.colorScheme.onBackground,
              ),
            ),
            const Spacer(),
            suffixWidget != null
                ? suffixWidget!
                : AssetImageView(
                    fileName: suffixImage ?? '',
                    color: Get.context!.theme.colorScheme.onSurface,
                    height: AppValues.iconSize_20,
                    width: AppValues.iconSize_20,
                  ),
          ],
        ),
      ),
    );
  }
}
