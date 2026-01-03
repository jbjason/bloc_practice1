import 'package:bloc_practice1/getx_structure/app/modules/auth/model/user_model.dart';

abstract class AuthRepository {
  Future<UserModel?> login(String email, String password);
}

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<UserModel?> login(String email, String password) async {
    await Future.delayed(Duration(seconds: 2));
    if (email == 'test@test.com' && password == '123456') {
      return UserModel(
        userId: '1',
        email: email,
        name: 'Test User',
        token: '',
        phoneNo: '',
        address: '',
        role: '',
        imageUrl: '',
        dateOfBirth: '',
        gender: '',
        country: '',
      );
    }
    return null;
  }
}
