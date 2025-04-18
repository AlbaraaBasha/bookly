import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Home/presentation/views/widgets/books_button_action.dart';
import 'package:bookly/features/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly/features/Home/presentation/views/widgets/custom_details_app_bar.dart';
import 'package:bookly/features/Home/presentation/views/widgets/custom_list_book_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.21,
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
                const SizedBox(height: 20),
                const BooksButtonAction(),
                const Expanded(child: SizedBox(height: 50)),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('You can also like', style: Styles.textStyle16),
                ),
                const SizedBox(height: 180, child: CustomListBookView()),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
