import 'package:belajar_flutter/login_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final fullnameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: const EdgeInsets.all(80),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            "assets/images/flutter.png",
            width: 60,
            height: 60,
          ),
          const SizedBox(
            height: 36,
          ),
          TextFormField(
            controller: fullnameController,
            decoration: const InputDecoration(
              labelText: "Full name",
              fillColor: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
              labelText: "Email",
              fillColor: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            controller: passwordController,
            decoration: const InputDecoration(
                labelText: "Password", fillColor: Colors.grey),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(fixedSize: const Size(220, 30)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
              child: const Text("Sign Up"))
        ]),
      ),
    );
  }
}
