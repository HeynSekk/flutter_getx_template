import 'package:flutter_getx_template/app/data/model/fake_api_related_data.dart';

abstract class FakeDataProvider {
  Future<UserResponse> getUserById(String userId);
}
