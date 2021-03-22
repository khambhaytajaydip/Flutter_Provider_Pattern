import 'package:sampleproject/data/network/DioClient.dart';
import 'package:sampleproject/data/network/constant/Endpoints.dart';
import 'package:sampleproject/model/Login.dart';

class ApiProvider {
  // dio instance
  final _dioClient = DioClient();

  Future<Login> postLogin() async {
    try {
      Map<String, dynamic> map = Map();
      map["email"] = "eve.holt@reqres.in";
      map["password"] = "cityslicka";

      final res = await _dioClient.post(Endpoints.login,
          data: map);
      return Login.fromMap(res);
    } catch (e) {
      throw e;
    }
  }
}