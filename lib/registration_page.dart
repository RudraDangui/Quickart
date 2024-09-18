import 'package:flutter/material.dart';
import 'package:quickart_proj/login_page.dart';
import 'package:quickart_proj/otp_verification_page.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});
  @override
  RegistrationPageState createState() => RegistrationPageState();
}

class RegistrationPageState extends State<RegistrationPage> {
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Image(
              image: AssetImage("images/login_page.png"),
              fit: BoxFit.contain,
              color: Color.fromARGB(255, 255, 255, 255),
              colorBlendMode: BlendMode.darken,
            ),
            const Text(
              'Register',
              style: TextStyle(
                color: Color.fromARGB(255, 56, 71, 78),
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              'We will send you a verification code',
              style: TextStyle(
                color: Color.fromARGB(255, 56, 71, 78),
                fontSize: 15,
                fontWeight: FontWeight.w400,
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
                  prefixIcon: Icon(Icons.face),
                  iconColor: Color.fromARGB(255, 56, 71, 78),
                  hintText: 'Name',
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 56, 71, 78),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(255, 240, 241, 243),
                ),
                keyboardType: TextInputType.name,
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
                  prefixIcon: Icon(Icons.email),
                  iconColor: Color.fromARGB(255, 56, 71, 78),
                  hintText: 'Email Address',
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 56, 71, 78),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(255, 240, 241, 243),
                ),
                keyboardType: TextInputType.emailAddress,
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
                    hintText: 'Confirm Password',
                    hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 56, 71, 78),
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 240, 241, 243),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isConfirmPasswordVisible =
                              !_isConfirmPasswordVisible;
                        });
                      },
                      icon: Icon(
                        _isConfirmPasswordVisible
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
                      MaterialPageRoute(
                          builder: (context) => const OtpVerificationPage()),
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
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
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
                            builder: (context) => const LoginPage()),
                      );
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Color.fromARGB(255, 94, 196, 1),
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}
