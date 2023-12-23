import 'package:flutter/material.dart';
import 'package:login_signup_page/components/boxStyleimg.dart';
import 'package:login_signup_page/components/long_elevatedbutton_style.dart';
import 'package:login_signup_page/components/textfield_blueprint.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                Image.asset(
                  'assets/images/loginpage.png',
                  height: 150.0,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Welcome Back',
                  style: TextStyle(
                    color: Colors.blueGrey[500],
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFieldBlueprint(
                  keyboardType: TextInputType.emailAddress,
                  controller: usernameController,
                  hintText: 'Enter your email',
                  obscureText: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFieldBlueprint(
                  keyboardType: TextInputType.visiblePassword,
                  controller: passwordController,
                  hintText: 'Enter your password',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.blueGrey[500],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                LongElevatedButton(onTap: () {}, buttonTxt: 'Login'),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.blueGrey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Or With',
                        style: TextStyle(
                          color: Colors.blueGrey[400],
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.blueGrey[400],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BoxStyleImg(img: 'assets/icons/ic-google.png'),
                    SizedBox(
                      width: 10,
                    ),
                    BoxStyleImg(img: 'assets/icons/ic-apple.png'),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account yet?',
                      style: TextStyle(color: Colors.blueGrey[400]),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'join now',
                      style: TextStyle(
                        color: Colors.blue[700],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
