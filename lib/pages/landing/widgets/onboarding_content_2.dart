import 'package:example/utils/constants.dart';
import 'package:example/utils/strings.dart';
import 'package:flutter/material.dart';

class OnBoardingContent2 extends StatelessWidget {
  const OnBoardingContent2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Image(
          image: AssetImage('assets/images/landing2.png'),
        ),
        Text(
          Strings.landingHeadlineText,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
        ),
        const SizedBox(height: kDefaultPadding),
        Text(
          Strings.landingText,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: kSystem60Color,
                fontSize: 16,
              ),
        ),
        const SizedBox(height: kDefaultPadding),
      ],
    );
  }
}
