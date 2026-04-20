import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/screens/sign_up.dart';
import 'package:flutter_auth_ui/widgets/CustomButtonCuntainer.dart';
import 'package:flutter_auth_ui/widgets/CustomTextField.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/Sign-in.png'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Sign in',
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Image.asset('assets/under-line.png', width: 74),
            ),
            SizedBox(height: 20),
            CustomTextfield(
              name: 'Email',
              hintText: 'Enter Your Email',
              suffixIcon: Icons.email_outlined,
            ),
            Gap(10),
            CustomTextfield(
              name: 'Password',
              hintText: 'Enter Your Password',
              suffixIcon: Icons.password_outlined,
            ),
            Gap(20),
            Custombuttoncuntainer(text: 'Login'),
            Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account?',
                  style: TextStyle(
                    color: Color(0xff616161),
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                Gap(5),
                GestureDetector(
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (c) => SignUp()),
                    ),
                  },
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      color: Color(0xffFF8383),
                      fontWeight: FontWeight.w500,
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
