import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monumental_habit/screens/screens.dart';
import 'package:monumental_habit/shared/app_colors.dart';
import 'package:monumental_habit/widgets/text_field.dart';
import 'package:monumental_habit/widgets/widgets.dart';

import '../../shared/shared.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  static const String routeName = 'RegisterScreen';

  static route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => RegisterScreen(),
    );
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          verticalSpaceLarge,
          Image.asset(
            fit: BoxFit.contain,
            '${KPaths.images}/register.png',
            height: screenHeightPercentage(context, percentage: 15.0),
          ),
          verticalSpaceMedium,
          Text(
            'CREATE YOUR ACCOUNT',
            style: KTextStyle.heading3Style.copyWith(fontFamily: klasik),
            textAlign: TextAlign.center,
          ),
          verticalSpaceMedium,
          Form(
            key: _formKey,
            child: Column(
              children: [
                CustomTextFormField(
                  fillColor: Colors.white,
                  icon: const Icon(Icons.account_circle_outlined),
                  hintText: 'Username',
                  onChanged: (a) {},
                ),
                CustomTextFormField(
                  fillColor: Colors.white,
                  icon: const Icon(Icons.mail_outline),
                  hintText: 'Email',
                  onChanged: (a) {},
                ),
                CustomTextFormField(
                  fillColor: Colors.white,
                  icon: const Icon(Icons.lock_outline),
                  hintText: 'Password',
                  onChanged: (a) {},
                ),
                verticalSpaceSmall,
                CustomCheckBox(
                  value: false,
                  onChanged: (value) {},
                  label: 'Keep me signed in',
                ),
                CustomCheckBox(
                  value: true,
                  onChanged: (value) {},
                  label: 'Email me about special pricing and more',
                ),
                verticalSpaceSmall,
                BlockButton(
                  content: 'Create Account',
                  onPressed: () {},
                ),
                Text(
                  'Or sign in with',
                  style: KTextStyle.bodyStyle.copyWith(fontSize: 15),
                ),
                verticalSpaceMedium,
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: BlockButton(
                        padding: const EdgeInsets.only(right: 8, left: 16),
                        backgroundColor: Colors.white,
                        content: 'Google',
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          '${KPaths.svg}google.svg',
                        ),
                      ),
                    ),
                    Expanded(
                      child: BlockButton(
                        padding: const EdgeInsets.only(left: 8, right: 16),
                        backgroundColor: Colors.white,
                        content: 'Facebook',
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          '${KPaths.svg}facebook.svg',
                        ),
                      ),
                    ),
                  ],
                ),
                verticalSpaceMedium,
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Text.rich(
                    textAlign: TextAlign.center,
                    style: KTextStyle.labelStyle.copyWith(
                      fontSize: 15,
                    ),
                    TextSpan(
                      children: [
                        const TextSpan(
                          text: 'Already have an account? ',
                        ),
                        TextSpan(
                            text: 'Sign in',
                            style: KTextStyle.labelStyle
                                .copyWith(fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      backgroundColor: KColors.primaryBg,
    );
  }
}

class CustomCheckBox extends StatelessWidget {
  final bool value;
  final void Function(bool?)? onChanged;
  final String label;

  const CustomCheckBox({
    Key? key,
    required this.value,
    this.onChanged,
    this.label = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Checkbox(
            value: value,
            onChanged: onChanged,
          ),
          Expanded(
            child: Text(
              label,
              style: KTextStyle.labelStyle,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
