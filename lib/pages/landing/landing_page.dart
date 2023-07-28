import 'package:example/pages/auth/sign_in_page.dart';
import 'package:example/utils/constants.dart';
import 'package:example/utils/strings.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  static const routeName = '/landing';

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  late final PageController _controller;
  int _currentPage = 0;

  @override
  void initState() {
    _controller = PageController(
      initialPage: 0,
    );
    _controller.addListener(() {
      setState(() {
        _currentPage = _controller.page!.round();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        padding: const EdgeInsets.all(kDefaultPadding),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < onBoardingScreens.length; i++)
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CircleAvatar(
                      radius: 6,
                      backgroundColor: _currentPage == i
                          ? kPrimaryColor
                          : kSliderDisabledColor,
                    ),
                  ),
              ],
            ),
            const SizedBox(
              height: kDefaultPadding,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _currentPage < onBoardingScreens.length - 1
                    ? TextButton(
                        onPressed: () {
                          _controller.animateToPage(
                              onBoardingScreens.length - 1,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.ease);
                        },
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: kDefaultPadding),
                          child: Text(Strings.skipButtonText),
                        ),
                      )
                    : const SizedBox(),
                Expanded(
                  flex: _currentPage < onBoardingScreens.length - 1 ? 0 : 1,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {
                      if (_currentPage < onBoardingScreens.length - 1) {
                        _controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                        return;
                      }
                      Navigator.of(context).pushNamedAndRemoveUntil(
                        SignInPage.routeName,
                        (route) => false,
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Text(
                        _currentPage < onBoardingScreens.length - 1
                            ? Strings.nextButtonText
                            : Strings.startButtonText,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(kPagePadding),
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _controller,
          scrollDirection: Axis.horizontal,
          children: onBoardingScreens,
        ),
      ),
    );
  }
}
