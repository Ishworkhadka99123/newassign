import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

import '../model/register_request_model.dart';
import '../repository/user_repo.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final List<User> _lstBatches = [];
  final String _dropDownValue = "";

  final _key = GlobalKey<FormState>();
  final _fnameController = TextEditingController(text: 'Ishwor');
  final _lnameController = TextEditingController(text: 'Khadka');
  final _emailController = TextEditingController(text: 'ishwor123@gmail.com');
  final _usernameController = TextEditingController(text: 'Ishworkhadka');
  final _passwordController = TextEditingController(text: 'password');

  _showMessage(int status) {
    if (status > 0) {
      MotionToast.success(
        description: const Text('Your registration is sucessfull'),
      ).show(context);
    } else {
      MotionToast.error(description: const Text('Error in adding user'))
          .show(context);
    }
  }

  _saveUser() async {
    User user = User(
      _fnameController.text,
      _lnameController.text,
      _emailController.text,
      _usernameController.text,
      _passwordController.text,
    );

    int status = await UserRepositoryImpl().addUser(user);
    _showMessage(status);
    print(status);

    // Get the batch object from the list of batches
    // final batch = _lstBatches
    //     .firstWhere((element) => element.batchName == _dropDownValue);

    // student.batch.target = batch;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Form(
              key: _key,
              child: Column(
                children: [
                  TextFormField(
                    controller: _fnameController,
                    decoration: const InputDecoration(
                      labelText: 'First Name',
                    ),
                    validator: ((value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter first name';
                      }
                      return null;
                    }),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    controller: _lnameController,
                    decoration: const InputDecoration(
                      labelText: 'Last Name',
                    ),
                    validator: ((value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter last name';
                      }
                      return null;
                    }),
                  ),
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                    ),
                    validator: ((value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    }),
                  ),
                  TextFormField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                    ),
                    validator: ((value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter username';
                      }
                      return null;
                    }),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                    ),
                    validator: ((value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter password';
                      }
                      return null;
                    }),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_key.currentState!.validate()) {
                          _saveUser();
                        }
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Brand Bold",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
