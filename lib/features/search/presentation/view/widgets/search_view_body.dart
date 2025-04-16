import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/search/presentation/view/widgets/costum_search_result_list_view.dart';
import 'package:bookly/features/search/presentation/view/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text('Results', style: Styles.textStyle18),
          ),
          Expanded(child: CustomSearchListView()),
        ],
      ),
    );
  }
}
