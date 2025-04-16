import 'package:bookly/features/Home/presentation/views/widgets/custom_best_seller_book_item.dart';
import 'package:flutter/material.dart';

//This widget never used in the project, because of some issues with CostumScrollView I did not understand yet
// but it is a good example of how to create a custom list view with a fixed height
// and no scrollable behavior. It can be used in the future if needed.
//
//
//
//
//
//
//
class CustomBestSellerListView extends StatelessWidget {
  const CustomBestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 4),
            child: CustomBestSellerBookItem(),
          );
        },
      ),
    );
  }
}
