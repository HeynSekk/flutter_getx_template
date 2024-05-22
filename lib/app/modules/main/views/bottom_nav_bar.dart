import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/base/base_widget_mixin.dart';
import 'package:flutter_getx_template/app/core/widget/asset_image_view.dart';
import 'package:get/get.dart';

import '/app/core/values/app_colors.dart';
import '/app/core/values/app_values.dart';
import '/app/modules/main/controllers/bottom_nav_controller.dart';
import '/app/modules/main/model/menu_code.dart';
import '/app/modules/main/model/menu_item.dart';

typedef OnBottomNavItemSelected = Function(MenuCode menuCode);

class BottomNavBar extends StatelessWidget with BaseWidgetMixin {
  BottomNavBar({
    Key? key,
    required this.onItemSelected,
  }) : super(key: key);

  final OnBottomNavItemSelected onItemSelected;
  final navController = BottomNavController();
  // final Key bottomNavKey = GlobalKey();

  @override
  Widget body(BuildContext context) {
    List<BottomNavItem> navItems = _getNavItems();

    return Obx(
      () => BottomNavigationBar(
        // key: bottomNavKey,
        items: _navItemBuilder(navItems),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: context.theme.colorScheme.primary,
        selectedItemColor: context.theme.colorScheme.onPrimary,
        unselectedItemColor: context.theme.colorScheme.onBackground,
        // unselectedItemColor: Colors.grey,
        currentIndex: navController.selectedIndex,
        onTap: (index) {
          navController.updateSelectedIndex(index);
          onItemSelected(navItems[index].menuCode);
        },
      ),
    );
  }

  List<BottomNavigationBarItem> _navItemBuilder(List<BottomNavItem> navItems) {
    return navItems
        .map(
          (BottomNavItem navItem) => _getBottomNavigationBarItem(
            navItem,
            navItems.indexOf(navItem) == navController.selectedIndex,
          ),
        )
        .toList();
  }

  BottomNavigationBarItem _getBottomNavigationBarItem(
    BottomNavItem navItem,
    bool isSelected,
  ) {
    return BottomNavigationBarItem(
      icon: AssetImageView(
        fileName: navItem.iconSvgName,
        height: AppValues.iconDefaultSize,
        width: AppValues.iconDefaultSize,
        color: isSelected
            ? Get.context!.theme.colorScheme.onPrimary
            : Get.context!.theme.colorScheme.onBackground,
      ),
      label: navItem.navTitle,
      tooltip: navItem.navTitle,
    );
  }

  List<BottomNavItem> _getNavItems() {
    return MenuCode.values
        .map((e) => e.toBottomNavItem(appLocalization))
        .toList();
  }
}
