import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_arch/const/resource.dart';
import 'package:mvvm_arch/view/Signup/widgets/signup_form.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SignupView();
  }
}

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(R.ASSETS_ILLUSTRATIONS_SIGNUP_PNG, height: 200)
                .pOnly(top: 50),
            const SignupForm().p12(),
          ],
        ),
      ),
    );
  }
}
