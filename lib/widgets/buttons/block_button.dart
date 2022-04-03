import 'package:flutter/material.dart';

import '../../shared/shared.dart';

class BlockButton extends StatelessWidget {
  final String content;
  final Function()? onPressed;
  final Color backgroundColor;
  final double height;
  final Widget? icon;

  const BlockButton({
    Key? key,
    this.content = '',
    this.onPressed,
    this.backgroundColor = KColors.primaryLight,
    this.height = 60,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
      child: SizedBox(
        height: height,
        child: ElevatedButton(
          child: Row(
            children: [
              ..._renderIcon(),
              Expanded(
                flex: 3,
                child: Text(
                  content,
                  style: KTextStyle.buttonStyle,
                  textAlign: icon != null ? TextAlign.left : TextAlign.center,
                ),
              ),
            ],
          ),
          style: ElevatedButton.styleFrom(
            primary: backgroundColor,
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

  List<Widget> _renderIcon() {
    if (icon != null) {
      return [
        Expanded(
            child: Align(
                alignment: Alignment.centerRight,
                child: SizedBox(height: 32, child: icon!))),
        verticalSpaceSmall
      ];
    }
    return [];
  }
}
