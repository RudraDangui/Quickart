import 'package:flutter/material.dart';
import 'package:quickart_proj/registration_page.dart';
import 'package:quickart_proj/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage("images/login_page.png"),
              fit: BoxFit.contain,
              color: Color.fromARGB(255, 255, 255, 255),
              colorBlendMode: BlendMode.darken,
            ),
            const Text(
              'Login',
              style: TextStyle(
                color: Color.fromARGB(255, 56, 71, 78),
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  prefixIcon: Icon(Icons.phone),
                  iconColor: Color.fromARGB(255, 56, 71, 78),
                  hintText: 'Phone Number',
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 56, 71, 78),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(255, 240, 241, 243),
                ),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                  signed: false,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: TextField(
                obscureText: !_isPasswordVisible,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    prefixIcon: const Icon(Icons.lock),
                    iconColor: const Color.fromARGB(255, 56, 71, 78),
                    hintText: 'Password',
                    hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 56, 71, 78),
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 240, 241, 243),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                      icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: const Color.fromARGB(255, 56, 71, 78),
                      ),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 80),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 94, 196, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(
                    color: Color.fromARGB(255, 56, 71, 78),
                    fontSize: 15,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegistrationPage()),
                    );
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(
                      color: Color.fromARGB(255, 94, 196, 1),
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
