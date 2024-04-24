import 'package:flutter_getx_template/app/data/model/fake_api_related_data.dart';
import 'package:flutter_getx_template/app/data/remote/fake_data_provider.dart';
import 'package:flutter_getx_template/app/data/repository/fake_repo.dart';
import 'package:get/get.dart';

class FakeRepoImpl implements FakeRepo {
  final _fakeDataProvider = Get.find<FakeDataProvider>();

  @override
  Future<UserResponse> getUserById(String id) {
    return _fakeDataProvider.getUserById(id);
  }
}
