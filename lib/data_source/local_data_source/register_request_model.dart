import '../../helper/objectbox.dart';
import '../../model/register_request_model.dart';
import '../../state/objectbox_state.dart';

class UserDataSource {
  ObjectBoxInstance get objectBoxInstance => ObjectBoxState.objectBoxInstance!;
  //Or
  ObjectBoxInstance objectBoxInstance2 = ObjectBoxState.objectBoxInstance!;

  Future<int> adduser(User user) async {
    try {
      return objectBoxInstance2.addUser(user);
    } catch (e) {
      return Future.value(0);
    }
  }

  Future<List<User>> getAllUser() async {
    try {
      return objectBoxInstance2.getAllUser();
    } catch (e) {
      return [];
    }
  }

  Future<User?> loginUser(String email, String password) {
    try {
      return Future.value(objectBoxInstance2.loginUser(email, password));
    } catch (e) {
      return Future.value(null);
    }
  }

  // Future<int> addUser(User user) {}
}
