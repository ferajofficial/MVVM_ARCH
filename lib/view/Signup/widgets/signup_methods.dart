import 'package:flutter/material.dart';
import 'package:mvvm_arch/const/resource.dart';
import 'package:velocity_x/velocity_x.dart';

class SignupMethods extends StatelessWidget {
  const SignupMethods({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            // Navigator.pushNamed(context, '/home');
            print("Facebook button pressed");
          },
          child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Image.asset(
                R.ASSETS_IMAGES_FACEBOOK_PNG,
                height: 35,
              )).pOnly(bottom: 20),
        ),
        GestureDetector(
          onTap: () {
            // Navigator.pushNamed(context, '/home');
            print("Google button pressed");
          },
          child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Image.asset(
                R.ASSETS_IMAGES_GOOGLE_PNG,
                height: 45,
              )).pOnly(bottom: 20),
        ),
      ],
    );
  }
}
