import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

import '../model/register_request_model.dart';
import '../repository/user_repo.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController(text: "ishwor@gmail.com");
  final _passwordController = TextEditingController(text: "ishwor123");

  Future<int> loginUser() async {
    User? status = await UserRepositoryImpl()
        .loginUser(_emailController.text, _passwordController.text);
    // _showMessage(status != null ? status.regId : 0);
    return status != null ? status.regId : 0;
  }

  _showMessage(int status) {
    if (status > 0) {
      MotionToast.success(
        description: const Text('Logged in successfully'),
      ).show(context);
    } else {
      MotionToast.error(
        description: const Text('Error to login'),
      ).show(context);
    }
  }

  final _gap = const SizedBox(
    height: 10,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image.network(
                  //   'https://i.pinimg.com/564x/3d/23/93/3d23937b872f3446a03730c58f1f68f9.jpg',
                  //   height: 500,
                  // ),
                  _gap,
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      hintText: 'email',
                      fillColor: Colors.grey,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 94, 70, 70)),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 102, 82, 82)),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          loginUser().then((value) {
                            print(value);
                            value > 0
                                ? Navigator.pushNamedAndRemoveUntil(
                                    context,
                                    '/DashboardScreen',
                                    (Route<dynamic> route) => false)
                                : _showMessage(value);
                          });
                        }
                      },
                      style: const ButtonStyle(
                          // backgroundColor: Colors.amber,
                          ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            fontFamily: 'OpenSans-Light', fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/RegisterScreen');
                          },
                          child: const Text('Sign up',
                              style: TextStyle(color: Colors.blue)))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/RegisterScreen');
                          },
                          icon: const Icon(Icons.facebook,
                              color: Color.fromARGB(255, 0, 0, 0), size: 30)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.mail,
                              color: Color.fromARGB(255, 0, 0, 0), size: 30)),
                    ],
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
