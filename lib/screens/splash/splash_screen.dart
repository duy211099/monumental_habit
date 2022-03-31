import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monumental_habit/screens/screens.dart';
import 'package:monumental_habit/shared/fonts.dart';
import '../../blocs/blocs.dart';
import '../../shared/shared.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static const String routeName = '/splash';
  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const SplashScreen());
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushNamed(IntroScreen.routeName);
    });
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("static/images/splash1.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: screenHeightPercentage(context, percentage: 15)),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'WELCOME TO\nMONUMENTAL\nHABITS',
                  style: heading1Style.copyWith(fontFamily: klasik),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
