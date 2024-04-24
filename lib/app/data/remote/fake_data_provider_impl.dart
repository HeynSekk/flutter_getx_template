import 'package:dio/dio.dart';
import 'package:flutter_getx_template/app/data/model/fake_api_related_data.dart';
import 'package:flutter_getx_template/app/data/remote/fake_data_provider.dart';
import 'package:flutter_getx_template/app/network/dio_provider_fake.dart';

import '/app/core/base/base_remote_source.dart';

class FakeDataProviderImpl extends BaseRemoteSource
    implements FakeDataProvider {
  @override
  Future<UserResponse> getUserById(String userId) {
    var endpoint = "${DioProviderFake.baseUrl}/users/$userId";
    var dioCall = dioClient.get(endpoint);

    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => _parseUserResponse(response));
    } catch (e) {
      rethrow;
    }
  }

  UserResponse _parseUserResponse(Response<dynamic> response) {
    return UserResponse.fromJson(response.data);
  }
}
