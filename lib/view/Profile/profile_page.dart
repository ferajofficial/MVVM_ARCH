import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mvvm_arch/const/resource.dart';
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
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            R.ASSETS_IMAGES_PROFILE_PNG,
            // height: 300,
          ),
          const TextField(
            readOnly: true,
            decoration: InputDecoration(
                hintText: 'Name',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)))),
          ).pOnly(bottom: 20, left: 10, right: 10),
          const TextField(
            readOnly: true,
            decoration: InputDecoration(
                hintText: 'Email',
                prefixIcon: Icon(Icons.alternate_email),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)))),
          ).pOnly(bottom: 20, left: 10, right: 10),
          const TextField(
            readOnly: true,
            decoration: InputDecoration(
                hintText: 'City',
                prefixIcon: Icon(Icons.location_city),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)))),
          ).pOnly(bottom: 20, left: 10, right: 10),
          ElevatedButton(
              onPressed: () {
                print("Logout button pressed");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff4361ee),
                fixedSize: const Size(250, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'Logout',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              )).pOnly(top: 20, left: 10, right: 10),
        ],
      ).p12(),
    );
  }
}
