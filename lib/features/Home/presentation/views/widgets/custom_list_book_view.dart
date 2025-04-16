import 'package:bookly/features/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class CustomListBookView extends StatelessWidget {
  const CustomListBookView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.all(8),
            child: CustomBookItem(),
          );
        },
      ),
    );
  }
}
