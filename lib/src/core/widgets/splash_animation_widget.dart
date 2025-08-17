import 'package:lazycoder/src/app_config/imports/import.dart';

class SplashAnimation extends StatelessWidget {
  const SplashAnimation({
    super.key,
    required this.widget,
    this.start = 0,
    this.end = 200,
    required this.seconds
  });

  final double end;
  final double start;
  final int seconds;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return PlayAnimationBuilder<double>(
      tween: Tween(begin: start, end: end),
      duration: Duration(seconds: seconds),
      curve: Curves.easeOut,
      builder: (context, value, child) {
        return SizedBox(
          width: value,
          height: value,
          child: widget
        );
      },
    );
  }
}
