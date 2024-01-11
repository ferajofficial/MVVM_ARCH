import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mvvm_arch/const/app_colors.dart';
import 'package:mvvm_arch/const/resource.dart';
import 'package:mvvm_arch/core/router/router.gr.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SplashView();
  }
}

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () =>
//* Put some conditions for LoggedIn User and SignedIn User, for
//* better Navigation as per the LogedIn/SignedIn record */
          AutoRouter.of(context).replace(const LoginRoute()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kPrimaryBgColor,
      body: Center(
        child: LottieBuilder.asset(R.ASSETS_IMAGES_LOTTIEFILES_HELLO_JSON),
      ),
    );
  }
}
