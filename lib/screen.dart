import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:orthodox/mezmure_dawit.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            image: Image.asset(
              width: 400,
              fit: BoxFit.cover,
              'assets/134009274249421277.jpg',
            ),
            title: 'Surafel',
            body: 'Hello world',
            footer: TextButton(onPressed: () {}, child: Text('Lest `go')),
          ),
          PageViewModel(
            image: Image.asset('assets/134009274249421277.jpg'),
            title: 'Surafel',
            body: 'Hello world',
            footer: TextButton(onPressed: () {}, child: Text('Lest `go')),
          ),
          PageViewModel(
            image: Image.asset('assets/134009274249421277.jpg'),
            title: 'Surafel',
            body: 'Hello world',
            footer: TextButton(onPressed: () {}, child: Text('Lest `go')),
          ),
          PageViewModel(
            image: Image.asset(
              fit: BoxFit.cover,

              'assets/134009274249421277.jpg',
            ),
            title: 'Surafel',
            body: 'Hello world',
            footer: TextButton(onPressed: () {}, child: Text('Lest `go')),
          ),
        ],

        dotsDecorator: DotsDecorator(
          activeSize: Size.square(20),
          activeColor: Colors.amber,
          size: Size(12, 10),
        ),
        showNextButton: true,
        next: Text('next'),
        showBackButton: true,
        back: Text('back'),
        showDoneButton: true,
        done: Text('done'),
        autoScrollDuration: 3000,
        showSkipButton: true,
        skip: Text('skip'),
        onDone: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MezmureDawit()),
          );
        },
      ),
    );
  }
}
