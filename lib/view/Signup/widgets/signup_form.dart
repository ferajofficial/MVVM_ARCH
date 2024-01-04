import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mvvm_arch/core/router/router.gr.dart';
import 'package:mvvm_arch/view/Signup/widgets/signup_methods.dart';
import 'package:velocity_x/velocity_x.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text("Signup",
              style: GoogleFonts.poppins(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              )).pOnly(bottom: 20),
        ),
        const SignupMethods(),
        Text(
          "or,Register .....",
          style: GoogleFonts.poppins(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ).pOnly(bottom: 20),
        const TextField(
          decoration: InputDecoration(
              hintText: 'Full Name', prefixIcon: Icon(Icons.person_rounded)),
        ).pOnly(bottom: 20),
        const TextField(
          decoration: InputDecoration(
              hintText: ' Email', prefixIcon: Icon(Icons.alternate_email)),
        ).pOnly(bottom: 20),
        const TextField(
          decoration: InputDecoration(
              hintText: ' Phone Number', prefixIcon: Icon(Icons.phone_iphone)),
        ).pOnly(bottom: 20),
        ElevatedButton(
            onPressed: () {
              AutoRouter.of(context).push(const HomeRoute());
              // print("signup button pressed");
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff4361ee),
              fixedSize: const Size(250, 45),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            child: Text(
              'Signup',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            )).pOnly(top: 20),
      ],
    ).p12();
  }
}
