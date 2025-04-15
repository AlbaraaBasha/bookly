import 'package:bookly/core/utils/constans.dart';
import 'package:flutter/material.dart';

class CostumAppBar extends StatelessWidget {
  const CostumAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Image.asset(kLogo, height: 18), const Icon(Icons.search)],
      ),
    );
  }
}
