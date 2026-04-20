import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/screens/login.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/Welcome.png'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Welcome',
              style: GoogleFonts.rubik(
                textStyle: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Lorem ipsum dolor sit amet consectetur.\n Lorem id sit',
              style: GoogleFonts.rubik(
                textStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffBDBDBD),
                ),
              ),
            ),
          ),
          SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.only(left: 250),
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (R) => SignIn()),
                );
              },
              child: Row(
                children: [
                  Text(
                    'Continue',
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffBDBDBD),
                      ),
                    ),
                  ),
                  SizedBox(width: 14),
                  Image.asset('assets/next-btn.png', width: 60),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
