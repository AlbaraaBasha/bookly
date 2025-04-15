import 'package:bookly/features/Home/presentation/views/widgets/costum_list_view_item.dart';
import 'package:flutter/material.dart';

class CostumListBookView extends StatelessWidget {
  const CostumListBookView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.all(8),
            child: CostumListViewItem(),
          );
        },
      ),
    );
  }
}
