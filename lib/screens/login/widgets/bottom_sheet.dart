import 'package:flutter/material.dart';

import '../../../shared/shared.dart';
import '../../../widgets/widgets.dart';

class LoginBottomSheet extends StatelessWidget {
  const LoginBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
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
              const Text(
                'Login with email',
                style: KTextStyle.bodyStyle,
              ),
              const Divider(
                thickness: 0.6,
                color: KColors.morning,
              ),
              verticalSpaceSmall,
              BlockButton(
                content: 'Login',
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
