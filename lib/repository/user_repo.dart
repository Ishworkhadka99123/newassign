import '../data_source/local_data_source/register_request_model.dart';
import '../model/register_request_model.dart';

abstract class UserRepository {
  Future<List<User>> getAllUser();

  Future<int> addUser(User user);

  Future<User?> loginUser(String email, String password);
}

class UserRepositoryImpl extends UserRepository {
  @override
  Future<int> addUser(User user) {
    return UserDataSource().adduser(user);
  }

  @override
  Future<List<User>> getAllUser() {
    return UserDataSource().getAllUser();
  }

  @override
  Future<User?> loginUser(String email, String password) {
    return UserDataSource().loginUser(email, password);
  }
}
