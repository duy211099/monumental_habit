import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monumental_habit/screens/screens.dart';

import '../../models/models.dart';
import '../../shared/shared.dart';
import '../../widgets/widgets.dart';
import 'cubit/intro_cubit.dart';
import 'widgets/intro_widget.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);
  static const String routeName = 'IntroScreen';

  static route() {
    return PageRouteBuilder(
      settings: const RouteSettings(name: routeName),
      pageBuilder: (_, __, ___) => BlocProvider<IntroCubit>(
        create: (context) => IntroCubit(),
        child: const IntroScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<IntroCubit, IntroState>(
      listener: (context, state) {
        if (state.isNavigate) {
          Navigator.of(context).pushNamed(LoginScreen.routeName);
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                  height: screenHeightPercentage(context, percentage: 8.0)),
              IntroWidget(
                content: introContents[state.active],
              ),
              verticalSpaceLarge,
              state.active != state.total - 1
                  ? Swiper(
                      total: 4,
                      active: state.active,
                      onNext: context.read<IntroCubit>().onActiveChange,
                      onSkip: context.read<IntroCubit>().onNavigate,
                    )
                  : BlockButton(
                      content: 'Get Started',
                      onPressed: context.read<IntroCubit>().onNavigate,
                    )
            ],
          ),
        );
      },
    );
  }
}

late List<IntroContent> introContents = [
  IntroContent(
    headline: 'WELCOME TO\nMANUMENTAL HABITS',
    imagePath: '${KPaths.images}intro1.png',
    subtitle: _introSubtitle,
  ),
  IntroContent(
    headline: 'CREATE NEW\nHABIT EASILY',
    imagePath: '${KPaths.images}intro2.png',
    subtitle: _introSubtitle,
  ),
  IntroContent(
    headline: 'KEEP TRACK OF YOUR\nPROGRESS',
    imagePath: '${KPaths.images}intro3.png',
    subtitle: _introSubtitle,
  ),
  IntroContent(
    headline: 'JOIN A SUPPORTIVE\nCOMMUNITY',
    imagePath: '${KPaths.images}intro4.png',
    subtitle: _introSubtitle,
  ),
];

final Widget _introSubtitle = Text.rich(
  textAlign: TextAlign.center,
  style: KTextStyle.labelStyle,
  TextSpan(
    children: [
      const TextSpan(
        text: 'WE CAN ',
      ),
      TextSpan(
          text: 'HELP YOU ',
          style: KTextStyle.labelStyle.copyWith(color: KColors.primaryDark)),
      const TextSpan(text: 'TO BE A BETTER\nVERSION OF '),
      TextSpan(
          text: 'YOURSELF.',
          style: KTextStyle.labelStyle.copyWith(color: KColors.primaryDark)),
    ],
  ),
);
