import 'package:example/utils/constants.dart';
import 'package:example/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePageAppBar extends StatefulWidget {
  const HomePageAppBar({super.key});

  @override
  State<HomePageAppBar> createState() => _HomePageAppBarState();
}

class _HomePageAppBarState extends State<HomePageAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 8, right: 8, top: 11),
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            kPrimaryColor.withOpacity(0.54),
            kPrimaryColor,
          ],
        ),
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/logo.svg'),
                    const SizedBox(
                      width: 14,
                    ),
                    const Text(
                      Strings.appName,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                    color: Color(0xFFFCD695),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    width: 24,
                    height: 24,
                    'assets/icons/notification.svg',
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            const Text(
              'Hello, Cyndy!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Find the class or field you like here',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            TextFormField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 21,
                ),
                prefixIconConstraints:
                    const BoxConstraints(minWidth: 0, minHeight: 0),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(
                    left: 24,
                    right: 16,
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/search.svg',
                    height: 24,
                    width: 24,
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15),
                ),
                fillColor: Colors.white,
                filled: true,
                labelText: 'Find Class',
                labelStyle: const TextStyle(
                  fontSize: 16,
                  color: kTextColor2,
                  fontWeight: FontWeight.w500,
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: SvgPicture.asset(
                    'assets/icons/mic.svg',
                    width: 24,
                    height: 24,
                  ),
                ),
                suffixIconConstraints:
                    const BoxConstraints(minWidth: 0, minHeight: 0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
