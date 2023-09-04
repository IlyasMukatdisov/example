import 'package:example/pages/home/widgets/categories_section.dart';
import 'package:example/pages/home/widgets/freemium_section.dart';
import 'package:example/pages/home/widgets/home_appbar.dart';
import 'package:example/pages/home/widgets/roadmap_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomePageAppBar(),
            SizedBox(
              height: 20,
            ),
            HomeCategoriesSection(),
            SizedBox(
              height: 40,
            ),
            RoadMapSection(),
            SizedBox(
              height: 40,
            ),
            FreemiumSection(),
          ],
        ),
      ),
    );
  }
}
