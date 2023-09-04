import 'package:example/pages/common/widgets/custom_elevated_button.dart';
import 'package:example/utils/constants.dart';
import 'package:example/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RoadMapItem extends StatelessWidget {
  final Map<String, String> roadMapItem;
  const RoadMapItem({super.key, required this.roadMapItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 176,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: kSystem30Color),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 14,
            ),
            SvgPicture.asset('assets/images/${roadMapItem['icon']}'),
            const SizedBox(
              height: 24,
            ),
            Text(
              roadMapItem['name']!.length > 21
                  ? roadMapItem['name'] ?? ''
                  : '${roadMapItem['name']}\n',
              style: headTextStyle.copyWith(fontSize: 13),
              maxLines: 2,
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: kSystem10Color,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text('12 class'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: kSystem10Color,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text('3 level'),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            CustomElevatedButton(
              text: 'Start journey',
              onPressed: () {},
              textSize: 10,
              borderRadius: 10,
            ),
            const SizedBox(
              height: 14,
            ),
          ],
        ),
      ),
    );
  }
}
