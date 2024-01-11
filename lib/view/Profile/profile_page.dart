import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mvvm_arch/const/app_colors.dart';
import 'package:mvvm_arch/const/resource.dart';
import 'package:mvvm_arch/core/router/router.gr.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ProfileView();
  }
}

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              AutoRouter.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.kButtonColor,
                width: 4,
              ),
              shape: BoxShape.circle,
            ),
            child: const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage(R.ASSETS_IMAGES_FERAJPROF_JPG),
            ).p12(),
          ),
          TextField(
            readOnly: true,
            decoration: InputDecoration(
                hintText: 'Sk Ferajuddin',
                hintStyle: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppColors.kTextFieldTextColor,
                ),
                prefixIcon: const Icon(Icons.person),
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)))),
          ).p20(),
          TextField(
            readOnly: true,
            decoration: InputDecoration(
                hintText: 'xyz123@gmail.com',
                hintStyle: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppColors.kTextFieldTextColor,
                ),
                prefixIcon: const Icon(Icons.alternate_email),
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)))),
          ).p20(),
          TextField(
            readOnly: true,
            decoration: InputDecoration(
                hintText: 'Balasore, Odisha',
                hintStyle: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppColors.kTextFieldTextColor,
                ),
                //  TextStyle(
                //     color: AppColors.kTextFieldTextColor,
                //     fontWeight: FontWeight.w600),
                prefixIcon: const Icon(Icons.location_city),
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)))),
          ).p20(),
          ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).push(const LoginRoute());
                // print("Logout button pressed");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.kButtonColor,
                // fixedSize: const Size(150, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'Logout',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: AppColors.kButtonTextColor,
                ),
              )).pOnly(top: 20, left: 10, right: 10),
        ],
      ).p12(),
    );
  }
}
