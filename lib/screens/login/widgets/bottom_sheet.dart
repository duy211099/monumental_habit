import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:monumental_habit/screens/screens.dart';

import '../../../shared/shared.dart';
import '../../../widgets/widgets.dart';

class LoginBottomSheet extends StatelessWidget {
  LoginBottomSheet({
    Key? key,
  }) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          children: [
            Text(
              'Login with email',
              style: KTextStyle.bodyStyle.copyWith(fontWeight: FontWeight.w500),
            ),
            const Divider(
              thickness: 0.6,
              color: KColors.morning,
            ),
            verticalSpaceSmall,
            Form(
              key: _formKey,
              child: Column(
                children: [
                  CustomTextFormField(
                    hintText: 'Email',
                    icon: const Icon(Icons.mail_outline),
                    onChanged: (vl) {},
                  ),
                  CustomTextFormField(
                    hintText: 'Password',
                    icon: const Icon(Icons.lock_outline),
                    obsecureText: true,
                    onChanged: (vl) {},
                  ),
                  verticalSpaceRegular,
                  BlockButton(
                    content: 'Login',
                    onPressed: () {},
                  ),
                  verticalSpaceSmall,
                  GestureDetector(
                    onTap: () {
                      log('asd');
                    },
                    child: Text(
                      'Forgot Password?',
                      style: KTextStyle.labelStyle.copyWith(
                        fontSize: 15,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  verticalSpaceSmall,
                  GestureDetector(
                    onTap: () => Navigator.of(context)
                        .pushNamed(RegisterScreen.routeName),
                    child: Text.rich(
                      textAlign: TextAlign.center,
                      style: KTextStyle.labelStyle.copyWith(
                        fontSize: 15,
                      ),
                      TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Don\'t have an account? ',
                          ),
                          TextSpan(
                              text: 'Sign up',
                              style: KTextStyle.labelStyle
                                  .copyWith(fontWeight: FontWeight.w700)),
                        ],
                      ),
                    ),
                  ),
                  verticalSpaceLarge,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
