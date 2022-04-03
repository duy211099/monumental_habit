import 'package:flutter/material.dart';

import '../../shared/shared.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const String routeName = 'LoginScreen';

  static route() {
    return MaterialPageRoute(builder: (context) => LoginScreen());
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
                  top: screenHeightPercentage(context, percentage: 36)),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'WELCOME TO\nMONUMENTAL HABITS',
                      style:
                          KTextStyle.heading2Style.copyWith(fontFamily: klasik),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  verticalSpaceLarge,
                  ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
