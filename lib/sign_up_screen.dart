import 'package:belajar_flutter/home.dart';
import 'package:belajar_flutter/login_screen.dart';
import 'package:belajar_flutter/login_screen_2.dart';
import 'package:flutter/gestures.dart';
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
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(38),
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
            controller: fullnameController,
            style: const TextStyle(
              fontSize: 12,
            ),
            decoration: const InputDecoration(
              labelText: "Full name",
              fillColor: Color.fromARGB(184, 230, 225, 240),
              filled: true,
            ),
          ),
          const SizedBox(
            height: 14,
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
            obscureText: !_isObscure,
            decoration: InputDecoration(
              labelText: "Password",
              fillColor: Color.fromARGB(184, 230, 225, 240),
              filled: true,
              suffixIcon: IconButton(
                icon:
                    Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
              ),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(fixedSize: const Size(480, 38)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const LoginScreen2();
                }));
              },
              child: const Text("Sign Up")),
          const Padding(padding: EdgeInsets.all(28)),
          ElevatedButton.icon(
            icon: Image.asset(
              "assets/images/facebook_icon.png",
              width: 30,
              height: 30,
            ),
            style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 80, 131, 207),
                fixedSize: const Size(480, 38)),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const LoginScreen2();
              }));
            },
            label: const Text("Sign Up with Facebook"),
          ),
          const Padding(padding: EdgeInsets.all(5)),
          ElevatedButton.icon(
              icon: Image.asset(
                "assets/images/google_logo.png",
                width: 30,
                height: 30,
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.white, fixedSize: const Size(480, 38)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const LoginScreen2();
                }));
              },
              label: const Text(
                "Sign Up with Google",
                style: TextStyle(color: Color.fromARGB(255, 95, 92, 92)),
              )),
          const Padding(padding: EdgeInsets.all(5)),
          Text.rich(
            textAlign: TextAlign.center,
            TextSpan(
              text: "By signing up you accept the ",
              style: const TextStyle(fontSize: 14),
              children: [
                TextSpan(
                  text: "Terms of Service",
                  style: const TextStyle(fontSize: 14, color: Colors.blue),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const LoginScreen();
                      }));
                    },
                ),
                TextSpan(
                    text: " and ",
                    style: const TextStyle(fontSize: 14),
                    children: [
                      TextSpan(
                        text: "Privacy Policy",
                        style:
                            const TextStyle(fontSize: 14, color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const LoginScreen();
                                },
                              ),
                            );
                          },
                      ),
                    ]),
              ],
            ),
          ),
          const Padding(padding: EdgeInsets.fromLTRB(20, 5, 20, 15)),
          const SizedBox(
            height: 20,
          ),
          Text.rich(
              textAlign: TextAlign.center,
              TextSpan(
                  text: "Already have an account? ",
                  style: const TextStyle(fontSize: 14),
                  children: [
                    TextSpan(
                        text: "Log in",
                        style:
                            const TextStyle(fontSize: 14, color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const LoginScreen2();
                                },
                              ),
                            );
                          })
                  ])),
        ]),
      ),
    );
  }
}
