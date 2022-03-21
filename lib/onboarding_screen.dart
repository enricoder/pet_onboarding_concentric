import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/rendering.dart';
import 'package:lottie/lottie.dart';
import 'package:pet_app/card_onboarding.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({Key? key}) : super(key: key);

  final data = [
    CardOnboardingData(
      title: 'REPORTA',
      subtitle:
          '¿Viste un perro extraviado en la calle?. Ayuda subiendo una foto para que encuentre a su familia',
      image: const AssetImage("assets/images/dog01.png"),
      backgroundcolor: const Color.fromARGB(255, 197, 72, 26),
      titlecolor: Colors.amber,
      subtitlecolor: Colors.white,
      background: LottieBuilder.asset('assets/animation/bgroj01.json'),
    ),
    CardOnboardingData(
      title: 'ADOPTA',
      subtitle:
          'Si tienes el espacio y el cariño puedes ayudar adoptando alguno de nuestros engreídos.',
      image: const AssetImage("assets/images/dog02.png"),
      backgroundcolor: Colors.white,
      titlecolor: const Color.fromARGB(255, 197, 72, 26),
      subtitlecolor: Colors.black,
      background: LottieBuilder.asset('assets/animation/bgbla02.json'),
    ),
    CardOnboardingData(
      title: 'COMPARTE',
      subtitle:
          'Ayúdanos compartiendo el final feliz de nuestros amigos de 4 patas con sus familias.',
      image: const AssetImage("assets/images/dog04.png"),
      backgroundcolor: const Color.fromARGB(255, 155, 46, 6),
      titlecolor: Colors.amber,
      subtitlecolor: Colors.white,
      background: LottieBuilder.asset('assets/animation/bgrojo04.json'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        colors: data.map((e) => e.backgroundcolor).toList(),
        itemCount: data.length,
        itemBuilder: (int index, double value) {
          return CardOnboarding(data: data[index]);
        },
      ),
    );
  }
}
