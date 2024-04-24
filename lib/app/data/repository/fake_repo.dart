import 'package:flutter_getx_template/app/data/model/fake_api_related_data.dart';

abstract class FakeRepo {
  Future<UserResponse> getUserById(String id);
}
