import 'package:flutter/material.dart';
import 'package:login_signup_page/components/boxStyleimg.dart';
import 'package:login_signup_page/components/long_elevatedbutton_style.dart';
import 'package:login_signup_page/components/textfield_blueprint.dart';
import 'package:login_signup_page/login_page.dart';

class SingUpPage extends StatelessWidget {
  const SingUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/loginpage.png',
                  height: 130.0,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.blueGrey[700],
                    fontSize: 30,
                  ),
                ),
                Text(
                  'by creating a free account',
                  style: TextStyle(
                    color: Colors.blueGrey[500],
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFieldBlueprint(
                  keyboardType: TextInputType.name,
                  controller: TextEditingController(),
                  hintText: 'Enter your full name',
                  obscureText: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFieldBlueprint(
                  keyboardType: TextInputType.emailAddress,
                  controller: TextEditingController(),
                  hintText: 'Enter your email',
                  obscureText: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFieldBlueprint(
                  keyboardType: TextInputType.number,
                  controller: TextEditingController(),
                  hintText: 'Enter your phone number',
                  obscureText: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFieldBlueprint(
                  keyboardType: TextInputType.visiblePassword,
                  controller: TextEditingController(),
                  hintText: 'Enter your password',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                LongElevatedButton(onTap: () {}, buttonTxt: 'join now'),
                const SizedBox(
                  height: 30,
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
                      'Already a member?',
                      style: TextStyle(color: Colors.blueGrey[400]),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Log in ',
                        style: TextStyle(
                          color: Colors.blue[700],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
