import 'package:flutter/material.dart';

class CostumListViewItem extends StatelessWidget {
  const CostumListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            image: AssetImage('assets/images/test_image.png'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
