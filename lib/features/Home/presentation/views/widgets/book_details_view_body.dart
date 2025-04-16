import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly/features/Home/presentation/views/widgets/custom_details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.2,
              vertical: 20,
            ),
            child: const CustomBookItem(),
          ),
          const Text('The Book Title', style: Styles.textStyle30),
          Text(
            'Albaraa Basha',
            style: Styles.textStyle18.copyWith(color: Colors.grey),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.star, color: Colors.amber),
              const SizedBox(width: 5),
              Text(
                '4.8',
                style: Styles.textStyle14.copyWith(color: Colors.grey),
              ),
              const SizedBox(width: 5),
              Text(
                '(200)',
                style: Styles.textStyle14.copyWith(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
