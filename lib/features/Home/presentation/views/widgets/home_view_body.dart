import 'package:bookly/core/utils/constans.dart';
import 'package:bookly/features/Home/presentation/views/widgets/costum_appBar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [CostumAppBar()]);
  }
}
