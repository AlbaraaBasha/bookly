import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Home/presentation/views/widgets/costum_app_bar.dart';
import 'package:bookly/features/Home/presentation/views/widgets/costum_best_seller_book_item.dart';
import 'package:bookly/features/Home/presentation/views/widgets/costum_best_seller_list_view.dart';
import 'package:bookly/features/Home/presentation/views/widgets/costum_list_book_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CostumAppBar(),
              CostumListBookView(),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text('Best Seller', style: Styles.textStyle16),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
        //Couldn't use ListView.builder because of the scroll issues
        //   SliverFillRemaining(child: CostumBestSellerListView()),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => const Padding(
              padding: EdgeInsets.symmetric(vertical: 4),
              child: CostumBestSellerBookItem(),
            ),
          ),
        ),
      ],
    );
  }
}
