import 'package:flutter/material.dart';
import '../../../models/models.dart';
import '../../../shared/shared.dart';

class IntroWidget extends StatelessWidget {
  final IntroContent content;

  const IntroWidget({
    Key? key,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          content.headline,
          textAlign: TextAlign.center,
          style: KTextStyle.heading2Style.copyWith(fontFamily: klasik),
        ),
        Image.asset(
          content.imagePath,
          height: screenHeightPercentage(context, percentage: 55.0),
        ),
        verticalSpaceSmall,
        content.subtitle,
      ],
    );
  }
}
