import '../../helper/objectbox.dart';
import '../../model/register_request_model.dart';
import '../../state/objectbox_state.dart';

class UserDataSource {
  ObjectBoxInstance get objectBoxInstance => ObjectBoxState.objectBoxInstance!;
  //Or
  // ObjectBoxInstance objectBoxInstance = ObjectBoxState.objectBoxInstance!;

  Future<int> adduser(User user) async {
    try {
      return objectBoxInstance.addUser(user);
    } catch (e) {
      return Future.value(0);
    }
  }

  Future<List<User>> getUser() async {
    try {
      return objectBoxInstance.getAllUser();
    } catch (e) {
      return [];
    }
  }
}
