import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mvvm_arch/const/app_colors.dart';
import 'package:mvvm_arch/core/router/router.gr.dart';
import 'package:mvvm_arch/view/signup/widgets/signup_methods.dart';
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
                color: AppColors.kPrimaryTextColor,
              )).pOnly(bottom: 20),
        ),
        const SignupMethods(),
        Text(
          "or,Register .....",
          style: GoogleFonts.poppins(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: AppColors.kSecondaryTextColor,
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
              backgroundColor: AppColors.kButtonColor,
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
                color: AppColors.kButtonTextColor,
              ),
            )).pOnly(top: 20),
      ],
    ).p12();
  }
}
