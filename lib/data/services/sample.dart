import '../services/base_api.dart';

class SampleService extends BaseApiService {
  Future<Map<String, dynamic>> login(String email, String password) async {
    final response = await post('/login', {
      'email': email,
      'password': password,
    });
    return Map<String, dynamic>.from(response);
  }
}
