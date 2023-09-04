import 'package:example/pages/home/widgets/roadmap_item.dart';
import 'package:example/utils/constants.dart';
import 'package:example/utils/styles.dart';
import 'package:flutter/material.dart';

class RoadMapSection extends StatelessWidget {
  const RoadMapSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Roadmap you might like',
                style: headTextStyle,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'See more',
                  style: headTextStyle.copyWith(color: kPrimaryColor),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          SizedBox(
            height: 270,
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                width: 16,
              ),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) => RoadMapItem(
                roadMapItem: roadMaps[index],
              ),
              itemCount: roadMaps.length,
            ),
          ),
        ],
      ),
    );
  }
}
