import 'package:flutter/material.dart';

import '../../shared/shared.dart';

class BlockButton extends StatelessWidget {
  final String content;
  final Function()? onPressed;

  const BlockButton({
    Key? key,
    this.content = '',
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        height: 60,
        child: TextButton(
          child: Text(
            content,
            style: KTextStyle.bodyStyle,
          ),
          style: ElevatedButton.styleFrom(
            primary: KColors.primaryLight,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
