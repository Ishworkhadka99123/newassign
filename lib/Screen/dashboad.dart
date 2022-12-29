import 'package:doctor_appoinment_app/Screen/register_page.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 116, 80, 22),
      ),
      body: Container(
        child: Row(children: [
          Card(
            color: Color.fromARGB(255, 90, 63, 18),
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              child: const SizedBox(
                width: 150,
                height: 150,
                child: Text(
                  'Login',
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
            width: 50,
          ),
          Card(
            color: const Color.fromARGB(255, 48, 43, 35),
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterScreen()));
              },
              child: const SizedBox(
                width: 150,
                height: 150,
                child: Text('Register'),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
