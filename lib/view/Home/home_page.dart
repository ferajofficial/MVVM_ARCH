import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:mvvm_arch/const/resource.dart';
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
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          )
        ],
      ),
    );
  }
}
