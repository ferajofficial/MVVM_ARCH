import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:mvvm_arch/const/app_colors.dart';
import 'package:mvvm_arch/const/resource.dart';
import 'package:mvvm_arch/core/router/router.gr.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();

  // Adjust the duration as needed
}

bool OnTap = false;

class _HomeViewState extends State<HomeView> {
  void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        // width: 200,
        content: Text(
          message,
          style: GoogleFonts.poppins(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: AppColors.kButtonTextColor,
          ),
          textAlign: TextAlign.center,
        ),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.kButtonColor.withOpacity(0.8),
          boxShadow: [
            BoxShadow(
              color: AppColors.kButtonColor.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
          // color: AppColors.kButtonColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                AutoRouter.of(context).push(const ProfileRoute());
              },
              icon: Icon(Icons.person,
                  color: OnTap ? Colors.grey : AppColors.kButtonTextColor,
                  size: 30),
            ),
            IconButton(
                onPressed: () {
                  showSnackbar(context, "You're already on Home Page");
                },
                icon: Icon(Icons.home,
                    color: OnTap ? AppColors.kButtonTextColor : Colors.grey,
                    size: 30)),
          ],
        ),
      ).h(60).pOnly(right: 60, left: 60, bottom: 20),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          LottieBuilder.asset(
            R.ASSETS_IMAGES_LOTTIEFILES_HOME_JSON,
            height: 250,
          ),
          Text(
            "Welcome Home!",
            textAlign: TextAlign.center,
            style:
                GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w600),
          ),
        ],
      ).p20(),
    );
  }
}
