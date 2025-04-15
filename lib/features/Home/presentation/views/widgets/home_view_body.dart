import 'package:bookly/features/Home/presentation/views/widgets/costum_app_bar.dart';
import 'package:bookly/features/Home/presentation/views/widgets/costum_list_book_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [CostumAppBar(), CostumListBookView()]);
  }
}
