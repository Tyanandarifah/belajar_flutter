import 'package:belajar_flutter/home.dart';
import 'package:flutter/material.dart';

class LoginScreen2 extends StatefulWidget {
  const LoginScreen2({Key? key}) : super(key: key);

  @override
  State<LoginScreen2> createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            "assets/images/flutter.png",
            width: 60,
            height: 60,
          ),
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            controller: emailController,
            style: const TextStyle(
              fontSize: 12,
            ),
            decoration: const InputDecoration(
              labelText: "Email",
              fillColor: Color.fromARGB(184, 230, 225, 240),
              filled: true,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          TextFormField(
            controller: passwordController,
            style: const TextStyle(
              fontSize: 12,
            ),
            decoration: const InputDecoration(
              labelText: "Password",
              fillColor: Color.fromARGB(184, 230, 225, 240),
              filled: true,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(fixedSize: const Size(480, 38)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Home();
                }));
              },
              child: const Text("Log in")),
        ]),
      ),
    );
  }
}
