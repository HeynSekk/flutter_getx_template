import 'package:flutter_getx_template/app/data/remote/fake_data_provider.dart';
import 'package:flutter_getx_template/app/data/remote/fake_data_provider_impl.dart';
import 'package:get/get.dart';

import '/app/data/remote/github_remote_data_source.dart';
import '/app/data/remote/github_remote_data_source_impl.dart';

class RemoteSourceBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GithubRemoteDataSource>(
      () => GithubRemoteDataSourceImpl(),
      tag: (GithubRemoteDataSource).toString(),
    );
    Get.put<FakeDataProvider>(
      FakeDataProviderImpl(),
      permanent: true,
    );
  }
}
