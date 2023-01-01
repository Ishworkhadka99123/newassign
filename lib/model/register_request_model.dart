import 'package:objectbox/objectbox.dart';
import 'package:doctor_appoinment_app/model/register_request_model.dart';

@Entity()
class User {
  @Id(assignable: true)
  int regId;
  String fname;
  String lname;
  String email;
  String username;
  String password;

  // @Backlink()
  // final user = ToMany<LoginRequestModel>();

  User(this.fname, this.lname, this.email, this.username, this.password,
      {this.regId = 0});
}
