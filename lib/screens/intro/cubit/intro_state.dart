part of 'intro_cubit.dart';

class IntroState extends Equatable {
  final int active;
  final int total;
  final bool isNavigate;

  const IntroState({
    required this.active,
    required this.total,
    required this.isNavigate,
  });

  factory IntroState.initial() {
    return const IntroState(
      total: 4,
      active: 0,
      isNavigate: false,
    );
  }

  @override
  List<Object> get props => [active, total, isNavigate];

  IntroState copyWith({
    int? active,
    int? total,
    bool? isNavigate,
  }) {
    return IntroState(
      active: active ?? this.active,
      total: total ?? this.total,
      isNavigate: isNavigate ?? this.isNavigate,
    );
  }
}
