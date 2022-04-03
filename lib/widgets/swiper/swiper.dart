import 'package:flutter/material.dart';

import '../../shared/shared.dart';

class Swiper extends StatelessWidget {
  final Function()? onSkip;
  final Function()? onNext;
  final int total;
  final int active;
  const Swiper({
    Key? key,
    this.onSkip,
    this.onNext,
    required this.total,
    required this.active,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(
            child: const Text(
              'Skip',
              style: KTextStyle.bodyStyle,
            ),
            onPressed: onSkip,
          ),
          SwiperCircles(
            total: total,
            active: active,
          ),
          TextButton(
            child: Text(
              'Next',
              style: active < total - 1
                  ? KTextStyle.bodyStyle
                  : KTextStyle.bodyStyle.copyWith(
                      color: HSLColor.fromColor(KColors.eclipse)
                          .withLightness(0.7)
                          .toColor()),
            ),
            onPressed: active < total - 1 ? onNext : null,
          ),
        ],
      ),
    );
  }
}

class SwiperCircles extends StatelessWidget {
  final int total;
  final int active;

  const SwiperCircles({
    Key? key,
    required this.total,
    this.active = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _buildCircle(),
    );
  }

  List<SwiperCircle> _buildCircle() {
    List<SwiperCircle> circles = [];
    for (var i = 0; i < total; i++) {
      i == active
          ? circles.add(const SwiperCircle(
              isActive: true,
            ))
          : circles.add(const SwiperCircle());
    }
    return circles;
  }
}

class SwiperCircle extends StatelessWidget {
  final bool isActive;
  const SwiperCircle({
    Key? key,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: isActive ? 18 : 10.0,
      height: isActive ? 18 : 10.0,
      decoration: BoxDecoration(
        color: isActive ? KColors.eclipse : KColors.primaryLight,
        shape: BoxShape.circle,
        border: isActive
            ? Border.all(
                width: 2,
                color: HSLColor.fromColor(KColors.eclipse)
                    .withLightness(0.8)
                    .toColor(),
              )
            : null,
      ),
    );
  }
}
