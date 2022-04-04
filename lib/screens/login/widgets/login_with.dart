import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../shared/shared.dart';
import '../../../widgets/widgets.dart';

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
            '${KPaths.svg}google.svg',
          ),
          onPressed: () {},
        ),
        BlockButton(
          content: 'Continue with Facebook',
          backgroundColor: Colors.white,
          icon: SvgPicture.asset(
            '${KPaths.svg}facebook.svg',
          ),
          height: 50,
          onPressed: () {},
        ),
      ],
    );
  }
}
