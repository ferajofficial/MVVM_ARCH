import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_arch/const/resource.dart';
import 'package:mvvm_arch/view/login/widgets/login_form.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LoginView();
  }
}

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(R.ASSETS_ILLUSTRATIONS_LOGIN_PNG),
            const LoginForm().p12(),
          ],
        ),
      ),
    );
  }
}
