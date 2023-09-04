import 'package:example/pages/common/widgets/custom_elevated_button.dart';
import 'package:example/utils/constants.dart';
import 'package:example/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  static const routeName = '/sign-up';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/logo.svg',
                    height: 24,
                    width: 24,
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  const Text(
                    Strings.appName,
                    style: TextStyle(
                      fontSize: 25,
                      color: kDarkGrayColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Text(
                Strings.signIn,
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    Strings.signUp,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    Strings.welcomeSignUpMessage,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: kSystem60Color),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  Form(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(24),
                            prefixIconConstraints:
                                const BoxConstraints(minWidth: 0, minHeight: 0),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(
                                left: 24,
                                right: 16,
                              ),
                              child: SvgPicture.asset(
                                'assets/icons/person.svg',
                                height: 24,
                                width: 24,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            labelText: Strings.fullName,
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(24),
                            prefixIconConstraints:
                                const BoxConstraints(minWidth: 0, minHeight: 0),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(
                                left: 24,
                                right: 16,
                              ),
                              child: SvgPicture.asset(
                                'assets/icons/education.svg',
                                height: 24,
                                width: 24,
                              ),
                            ),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(
                                left: 0,
                                right: 30,
                              ),
                              child: SvgPicture.asset(
                                'assets/icons/expand.svg',
                                height: 10,
                                width: 10,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            labelText: 'Last education',
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(24),
                            prefixIconConstraints:
                                const BoxConstraints(minWidth: 0, minHeight: 0),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(
                                left: 24,
                                right: 16,
                              ),
                              child: SvgPicture.asset(
                                'assets/icons/calendar.svg',
                                height: 24,
                                width: 24,
                              ),
                            ),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(
                                left: 0,
                                right: 30,
                              ),
                              child: SvgPicture.asset(
                                'assets/icons/expand.svg',
                                height: 10,
                                width: 10,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            labelText: 'Age',
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(24),
                            prefixIconConstraints:
                                const BoxConstraints(minWidth: 0, minHeight: 0),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(
                                left: 24,
                                right: 16,
                              ),
                              child: SvgPicture.asset(
                                'assets/icons/email.svg',
                                height: 20,
                                width: 20,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            labelText: 'Email',
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(24),
                            prefixIconConstraints:
                                const BoxConstraints(minWidth: 0, minHeight: 0),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(
                                left: 24,
                                right: 16,
                              ),
                              child: SvgPicture.asset(
                                'assets/icons/phone.svg',
                                height: 24,
                                width: 24,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            labelText: 'Phone number',
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(24),
                            prefixIconConstraints:
                                const BoxConstraints(minWidth: 0, minHeight: 0),
                            suffixIconConstraints:
                                const BoxConstraints(minWidth: 0, minHeight: 0),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(
                                left: 24,
                                right: 16,
                              ),
                              child: SvgPicture.asset(
                                'assets/icons/password.svg',
                                height: 24,
                                width: 24,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            labelText: 'Password',
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(
                                right: 24,
                                left: 16,
                              ),
                              child: SvgPicture.asset(
                                'assets/icons/eye_close.svg',
                                height: 24,
                                width: 24,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  const Text.rich(
                    TextSpan(
                      text: Strings.privacySectionText,
                      style: TextStyle(
                        color: kSystem60Color,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(
                          text: Strings.termsAndConditions,
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                          children: [
                            TextSpan(
                              text: Strings.and,
                              style: TextStyle(
                                color: kSystem60Color,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                              children: [
                                TextSpan(
                                  text: Strings.privacyPolicy,
                                  style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 56,
                  ),
                  CustomElevatedButton(
                    text: Strings.createAccount,
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
