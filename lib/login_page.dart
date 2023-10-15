import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/components/login_button.dart';
import 'package:login_ui/components/my_textfield.dart';
import 'package:login_ui/components/square.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            color: const Color.fromARGB(255, 221, 221, 221),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.lock,
                    size: 80,
                    color: Color.fromARGB(255, 50, 158, 244),
                  ),
                  const SizedBox(height: 50),
                  const Text(
                    'Welcome back!',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 139, 139, 139),
                        letterSpacing: 2),
                  ),
                  const SizedBox(height: 40),
                  MyTextField(
                    controller: emailController,
                    hintText: 'Email',
                    obscureText: false,
                  ),
                  const SizedBox(height: 15),
                  MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                  ),
                  const SizedBox(height: 7),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot password?',
                          style: TextStyle(
                              color: Color.fromARGB(255, 110, 110, 110)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  LoginButton(
                    onPressed: () {},
                  ),
                  const SizedBox(height: 50),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 2,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'Or continue with',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 122, 122, 122)),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Square(imagePath: 'assets/images/google.png'),
                      SizedBox(
                        width: 30,
                      ),
                      Square(imagePath: 'assets/images/apple.png'),
                    ],
                  ),
                  const SizedBox(height: 80),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Not a member?',
                      ),
                      SizedBox(width: 8),
                      Text('Register now',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue)),
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}
