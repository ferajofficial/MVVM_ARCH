import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mvvm_arch/view/Login/widgets/login_methods.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text("Login",
              style: GoogleFonts.poppins(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              )).pOnly(bottom: 20),
        ),
        const TextField(
          decoration: InputDecoration(
              hintText: 'Enter Email', prefixIcon: Icon(Icons.alternate_email)),
        ).pOnly(bottom: 20),
        const TextField(
          decoration: InputDecoration(
              hintText: 'Enter Pass',
              prefixIcon: Icon(Icons.fingerprint_sharp)),
        ).pOnly(bottom: 20),
        ElevatedButton(
            onPressed: () {
              // Navigator.pushNamed(context, '/home');
              print("login button pressed");
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff4361ee),
              fixedSize: const Size(250, 45),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            child: Text(
              'Login',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            )).pOnly(top: 20),
        Text(
          "or,login with...",
          style: GoogleFonts.poppins(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ).pOnly(top: 20, bottom: 20),
        const LoginMethods(),
        GestureDetector(
          onTap: () {
            // Navigator.pushNamed(context, '/home');
            print("signup text pressed");
          },
          child: RichText(
              text: TextSpan(
                  text: 'Already have an Account? ',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                  children: [
                TextSpan(
                  text: 'signup',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue[700],
                  ),
                ),
              ])),
        ),
      ],
    ).p12();
  }
}
