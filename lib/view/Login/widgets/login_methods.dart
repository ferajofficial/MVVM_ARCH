import 'package:flutter/material.dart';
import 'package:mvvm_arch/const/resource.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginMethods extends StatelessWidget {
  const LoginMethods({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            print("facebook button pressed");
          },
          child: Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              // color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey.shade200),
            ),
            child: Image.asset(R.ASSETS_IMAGES_FACEBOOK_PNG),
            // const Icon(
            //   Icons.facebook,
            //   size: 35,
            //   color: Colors.blue,
            // ),
          ).pOnly(bottom: 20),
        ),
        GestureDetector(
          onTap: () {
            print("Google button pressed");
          },
          child: Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey.shade200),
            ),
            child: Image.asset(R.ASSETS_IMAGES_GOOGLE_PNG),
            // child: const Icon(
            //   Icons.g_mobiledata,
            //   size: 45,
            //   color: Colors.blue,
            // ),
          ).pOnly(bottom: 20),
        ),
      ],
    );
  }
}
