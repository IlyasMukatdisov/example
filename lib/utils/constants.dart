import 'package:example/pages/landing/widgets/onboarding_content_1.dart';
import 'package:example/pages/landing/widgets/onboarding_content_2.dart';
import 'package:example/pages/landing/widgets/onboarding_content_3.dart';
import 'package:flutter/material.dart';

const kDefaultPadding = 16.0;
const kPagePadding = 30.0;

const kPrimaryColor = Color(0xFFF9AD2B);
const kPrimaryVariant = Color(0xFFFEF5E5);
const kSystem60Color = Color(0xFF787878);
const kTextColor2 = Color(0xFFA5A5A5);
const kDarkGrayColor = Color(0xFF4B4B4B);
const kSliderDisabledColor = Color(0xFFD2D2D2);
const kSystem30Color = Color(0xFFBCBCBC);
const kSystem10Color = Color(0xFFE9E9E9);

const onBoardingScreens = [
  OnBoardingContent1(),
  OnBoardingContent2(),
  OnBoardingContent3(),
];

const categories = [
  'Design',
  'Programmer',
  'Finance',
  'Soft skill',
  'Accountancy',
  'Data science',
  'Language',
  'Marketing'
];

const roadMaps = [
  {'name': 'Mastering UI/UX Design', 'icon': 'figma.svg'},
  {'name': 'Mastering HTML', 'icon': 'html.svg'},
  {'name': 'Mastering CSS', 'icon': 'css.svg'},
  {'name': 'Mastering Python', 'icon': 'python.svg'},
  {'name': 'Mastering Flutter', 'icon': 'flutter.svg'},
];
