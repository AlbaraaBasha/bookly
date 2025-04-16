import 'package:bookly/core/utils/constans.dart';
import 'package:bookly/features/search/presentation/view/search_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18, top: 60, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(kLogo, height: 18),
          IconButton(
            onPressed: () {
              Get.to(() => const SearchView());
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}
