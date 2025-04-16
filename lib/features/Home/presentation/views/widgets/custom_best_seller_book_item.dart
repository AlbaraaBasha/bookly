import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Container(
            height: 125,
            width: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                image: AssetImage('assets/images/test_image.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: const Text(
                    'Harry Potter and the Goblet of Fire',
                    style: Styles.textStyle20,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Albaraa Basha',
                  style: Styles.textStyle14.copyWith(color: Colors.grey),
                ),
                const SizedBox(height: 6),

                Row(
                  children: [
                    const Text(r'16.00$', style: Styles.textStyle16),
                    const Spacer(),
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
          ),
        ],
      ),
    );
  }
}
