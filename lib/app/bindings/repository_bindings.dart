import 'package:flutter_getx_template/app/data/repository/fake_repo.dart';
import 'package:flutter_getx_template/app/data/repository/fake_repo_impl.dart';
import 'package:get/get.dart';

import '/app/data/repository/github_repository.dart';
import '/app/data/repository/github_repository_impl.dart';

class RepositoryBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GithubRepository>(
      () => GithubRepositoryImpl(),
      tag: (GithubRepository).toString(),
    );
    Get.put<FakeRepo>(FakeRepoImpl(), permanent: true);
  }
}
