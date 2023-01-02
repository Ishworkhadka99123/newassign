import 'dart:async';

import 'package:doctor_appoinment_app/objectbox.g.dart';
import 'package:objectbox/objectbox.dart';
import 'package:path_provider/path_provider.dart';
import '../model/register_request_model.dart';

class ObjectBoxInstance {
  //Store is the Database
  late final Store _store;

  //User is Table
  late final Box<User> _user;

  // Constructor
  ObjectBoxInstance(this._store) {
    _user = Box<User>(_store);
  }

  // Initialization of ObjectBox
  static Future<ObjectBoxInstance> init() async {
    var dir = await getApplicationDocumentsDirectory();
    final store = Store(getObjectBoxModel(), directory: '${dir.path},user');
    return ObjectBoxInstance(store);
  }

  // User Queries
  int addUser(User user) {
    return _user.put(user);
  }

  List<User> getAllUser() {
    return _user.getAll();
  }

  FutureOr<User?>? loginUser(String email, String password) {}
}
