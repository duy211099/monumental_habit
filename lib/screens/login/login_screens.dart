import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monumental_habit/screens/login/widgets/bottom_sheet.dart';
import 'package:monumental_habit/widgets/widgets.dart';

import '../../shared/shared.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const String routeName = 'LoginScreen';

  static route() {
    return MaterialPageRoute(builder: (context) => const LoginScreen());
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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  LogInWithWidget(),
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

class LogInWithWidget extends StatelessWidget {
  const LogInWithWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            'WELCOME TO\nMONUMENTAL HABITS',
            style: KTextStyle.heading2Style.copyWith(fontFamily: klasik),
            textAlign: TextAlign.center,
          ),
        ),
        verticalSpaceLarge,
        BlockButton(
          content: 'Continue with Google',
          backgroundColor: Colors.white,
          height: 50,
          icon: SvgPicture.asset(
            'static/images/svg/google.svg',
          ),
          onPressed: () {},
        ),
        BlockButton(
          content: 'Continue with Facebook',
          backgroundColor: Colors.white,
          icon: SvgPicture.asset(
            'static/images/svg/facebook.svg',
          ),
          height: 50,
          onPressed: () {},
        ),
      ],
    );
  }
}
