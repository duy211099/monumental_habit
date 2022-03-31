import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monumental_habit/shared/shared.dart';

import 'blocs/blocs.dart';

void main() {
  EquatableConfig.stringify = kDebugMode;

  BlocOverrides.runZoned(
    () {
      runApp(const MyApp());
    },
    blocObserver: SimpleBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: manRope,
      ),
      home: Scaffold(
        body: Center(
            child: Text(
          'Hi lorem hello fox how do u do',
          style: TextStyle(fontFamily: manRope, fontSize: 30),
        )),
      ),
    );
  }
}
