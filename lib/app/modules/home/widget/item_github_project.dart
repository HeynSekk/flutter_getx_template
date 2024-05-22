import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/values/other_values.dart';
import 'package:flutter_getx_template/app/core/widget/ripple.dart';
import 'package:get/get.dart';

import '/app/core/base/base_widget_mixin.dart';
import '/app/core/values/app_values.dart';
import '/app/core/widget/elevated_container.dart';
import '/app/core/widget/icon_text_widgets.dart';
import '/app/modules/home/model/github_project_ui_data.dart';
import '/app/routes/app_pages.dart';

class ItemGithubProject extends StatelessWidget with BaseWidgetMixin {
  final GithubProjectUiData dataModel;

  ItemGithubProject({
    Key? key,
    required this.dataModel,
  }) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return ElevatedContainer(
      bgColor: context.theme.colorScheme.surface,
      child: Ripple(
        onTap: _onTap,
        child: Padding(
          padding: const EdgeInsets.all(AppValues.padding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(dataModel.ownerAvatar),
                radius: AppValues.circularImageSize_30,
              ),
              const SizedBox(width: AppValues.margin_10),
              _getDetailsView(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getDetailsView(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            dataModel.repositoryName,
            style: context.textTheme.titleLarge!
                .copyWith(color: context.theme.colorScheme.onSurface),
            overflow: AppTextOverflow.primaryOverflowStyle,
            maxLines: 1,
          ),
          const SizedBox(height: AppValues.margin_4),
          Text(
            dataModel.ownerLoginName,
            style: context.textTheme.titleSmall!
                .copyWith(color: context.theme.colorScheme.onSurfaceVariant),
            maxLines: 1,
            overflow: AppTextOverflow.primaryOverflowStyle,
          ),
          const SizedBox(height: AppValues.margin_4),
          _getForkStarWatcherView(),
        ],
      ),
    );
  }

  Widget _getForkStarWatcherView() {
    return Row(
      children: [
        IconTextWidget(
          fileName: "ic_fork.svg",
          value: dataModel.numberOfFork.toString(),
          height: AppValues.iconSize_20,
          width: AppValues.iconSize_20,
          color: Get.context!.theme.colorScheme.onSurfaceVariant,
        ),
        IconTextWidget(
            icon: Icons.star_border,
            value: dataModel.numberOfStar.toString(),
            size: AppValues.iconSize_20,
            color: Get.context!.theme.colorScheme.onSurfaceVariant),
        IconTextWidget(
            icon: Icons.visibility_outlined,
            value: dataModel.watchers.toString(),
            size: AppValues.iconSize_20,
            color: Get.context!.theme.colorScheme.onSurfaceVariant),
      ],
    );
  }

  void _onTap() {
    Get.toNamed(Routes.PROJECT_DETAILS, arguments: dataModel);
  }
}
