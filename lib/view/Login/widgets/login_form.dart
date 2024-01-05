import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mvvm_arch/const/app_colors.dart';
import 'package:mvvm_arch/core/router/router.gr.dart';
import 'package:mvvm_arch/view/login/widgets/login_methods.dart';
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
                color:AppColors.kPrimaryTextColor,
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
              AutoRouter.of(context).push(const HomeRoute());
              // print("login button pressed");
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.kButtonColor,
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
                color: AppColors.kButtonTextColor,
              ),
            )).pOnly(top: 20),
        Text(
          "or,login with...",
          style: GoogleFonts.poppins(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: AppColors.kSecondaryTextColor,
          ),
        ).pOnly(top: 20, bottom: 20),
        const LoginMethods(),
        GestureDetector(
          onTap: () {
            AutoRouter.of(context).push(const SignupRoute());
            // print("signup text pressed");
          },
          child: RichText(
              text: TextSpan(
                  text: 'Already have an Account? ',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppColors.kSecondaryTextColor,
                  ),
                  children: [
                TextSpan(
                  text: 'signup',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: AppColors.kButtonColor,
                  ),
                ),
              ])),
        ),
      ],
    ).p12();
  }
}
