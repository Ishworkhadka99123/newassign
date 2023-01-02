import 'package:objectbox/objectbox.dart';

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
