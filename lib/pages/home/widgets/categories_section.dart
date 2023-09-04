import 'package:example/pages/home/widgets/home_category.dart';
import 'package:example/utils/constants.dart';
import 'package:example/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeCategoriesSection extends StatelessWidget {
  const HomeCategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Explore Categories',
            style: headTextStyle,
          ),
          const SizedBox(
            height: 32,
          ),
          GridView(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
            ),
            children: List.generate(
              categories.length,
              (index) => HomeCategory(
                categoryName: categories[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
