import '../data_source/local_data_source/register_request_model.dart';
import '../model/register_request_model.dart';

abstract class UserRepository {
  Future<List<User>> getusers();
  Future<int> addUser(User user);
  // Future<Student?>
}

class UserRepositoryImpl extends UserRepository {
  @override
  Future<int> addUser(User user) {
    return UserDataSource().adduser(user);
  }

  @override
  Future<List<User>> getusers() {
    return UserDataSource().getUser();
  }

  // Future<Student?> loginStudent(String username, String password) {
  //   return StudentDataSource().loginStudent(username, password);
  // }
}
