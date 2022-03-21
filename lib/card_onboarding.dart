import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CardOnboardingData {
  final String title;
  final String subtitle;
  final ImageProvider image;
  final Color backgroundcolor;
  final Color titlecolor;
  final Color subtitlecolor;
  final Widget? background;

  const CardOnboardingData({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.backgroundcolor,
    required this.titlecolor,
    required this.subtitlecolor,
    this.background,
  });
}

class CardOnboarding extends StatelessWidget {
  const CardOnboarding({required this.data, Key? key}) : super(key: key);

  final CardOnboardingData data;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (data.background != null) data.background!,
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            children: [
              const Spacer(flex: 3),
              Flexible(flex: 20, child: Image(image: data.image)),
              const Spacer(flex: 1),
              Text(
                data.title.toUpperCase(),
                style: TextStyle(
                  color: data.titlecolor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
                maxLines: 1,
              ),
              const Spacer(flex: 1),
              Text(
                data.subtitle,
                style: TextStyle(
                  color: data.subtitlecolor,
                  fontSize: 19,
                ),
                textAlign: TextAlign.center,
                maxLines: 3,
              ),
              const Spacer(flex: 10),
            ],
          ),
        ),
      ],
    );
  }
}
