import 'package:bookly/features/Home/presentation/views/widgets/custom_best_seller_book_item.dart';
import 'package:flutter/material.dart';

class CustomSearchListView extends StatelessWidget {
  const CustomSearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 4),
            child: CustomBookItem(),
          );
        },
      ),
    );
  }
}
