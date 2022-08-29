import 'package:belajar_flutter/home.dart';
import 'package:belajar_flutter/login_screen.dart';
import 'package:belajar_flutter/login_screen_2.dart';
import 'package:belajar_flutter/sign_up_screen.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(60)),
            Image.asset(
              "assets/images/flutter.png",
              width: 60,
              height: 60,
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "EVON",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Padding(padding: EdgeInsets.all(30)),
            const Text(
              "Discover upcoming events near you",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14),
            ),
            Padding(padding: EdgeInsets.all(80)),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue, fixedSize: const Size(220, 30)),
                onPressed: () async {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SignUpScreen();
                  }));
                },
                child: const Text("Sign Up")),
            Padding(padding: EdgeInsets.all(5)),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    fixedSize: const Size(220, 30),
                    side: BorderSide(color: Colors.blue)),
                onPressed: () async {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginScreen2();
                  }));
                },
                child: const Text(
                  "Log In",
                  style: TextStyle(color: Colors.blue),
                )),
            Padding(padding: EdgeInsets.all(8)),
            GestureDetector(
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Home();
                  }));
                },
                child: const Text(
                  "Skip for now",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
