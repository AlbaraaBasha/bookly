import 'package:bookly/core/utils/constans.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(kLogo),
        const SizedBox(height: 20),
        const Text('Free Books For Everyone', textAlign: TextAlign.center),
      ],
    );
  }
}
