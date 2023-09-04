import 'package:example/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeCategory extends StatelessWidget {
  final String categoryName;

  const HomeCategory({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: kPrimaryVariant,
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset(
            'assets/icons/${categoryName.toLowerCase()}.svg',
            height: 33,
            width: 33,
            fit: BoxFit.scaleDown,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          categoryName,
          style: const TextStyle(
              fontSize: 10, fontWeight: FontWeight.bold, color: kDarkGrayColor),
        ),
      ],
    );
  }
}
