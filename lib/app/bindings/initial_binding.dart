import 'package:flutter_getx_template/app/core/utils/theme/theme_controller.dart';
import 'package:get/get.dart';

import 'local_source_bindings.dart';
import 'remote_source_bindings.dart';
import 'repository_bindings.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    RemoteSourceBindings().dependencies();
    RepositoryBindings().dependencies();
    LocalSourceBindings().dependencies();
    Get.put<ThemeController>(ThemeController(), permanent: true);
  }
}
