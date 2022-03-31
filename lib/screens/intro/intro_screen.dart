import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);
  static const String routeName = 'IntroScreen';

  static route() {
    return PageRouteBuilder(
      settings: const RouteSettings(name: routeName),
      pageBuilder: (_, __, ___) => const IntroScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'WELCOME TO\nMANUMENTAL HABITS',
            textAlign: TextAlign.center,
          ),
          Image.asset('static/images/intro.png'),
          Text(
            'WE CAN HELP YOU TO BE A BETTER\nVERSION OF YOURSELF.',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
