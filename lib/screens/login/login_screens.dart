import 'package:flutter/material.dart';
import 'package:monumental_habit/screens/login/widgets/bottom_sheet.dart';
import 'package:monumental_habit/screens/login/widgets/login_with.dart';

import '../../shared/shared.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const String routeName = 'LoginScreen';

  static route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (context) => const LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("static/images/login_bg.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: screenHeightPercentage(context, percentage: 20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Spacer(),
                  const LogInWithWidget(),
                  verticalSpaceRegular,
                  LoginBottomSheet()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
