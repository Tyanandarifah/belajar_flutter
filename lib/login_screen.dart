import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/flutter.png",
              width: 70,
              height: 70,
            ),
            const SizedBox(
              height: 36,
            ),
            const Text(
              "Aplikasi Baru",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text("Silahkan Login"),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: usernameController,
              decoration: const InputDecoration(
                  labelText: "Username", hintText: "contoh : indocyber"),
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Password",
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            ElevatedButton(
                onPressed: () async {
                  String username = usernameController.text.toString();
                  String password = passwordController.text.toString();

                  print("username => $username");
                  print("password => $password");

                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context){
                  //     return const Text("HomeScreen");
                  //   })
                  // );
                },
                child: const Text("Login")),
          ],
        ),
      ),
    );
  }
}
