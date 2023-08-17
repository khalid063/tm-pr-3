import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager_pr_3/ui/screens/login_screen.dart';
import 'package:task_manager_pr_3/ui/utils/assets_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateToLogin();
  }

  void navigateToLogin() {
    Future.delayed(const Duration(seconds: 5)).then((_) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
              (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: SvgPicture.asset(
              AssetsUtils.backgroundSvg,
              fit: BoxFit.fitHeight,
            ),
          ),
          Center(
            child: SvgPicture.asset(
              AssetsUtils.logoSvg,
              width: 80,
              fit: BoxFit.scaleDown,
            ),
          ),
        ],
      ),
    );
  }
}
