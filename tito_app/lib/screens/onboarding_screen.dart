import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:tito_app/data/tito_colors.dart';
import 'package:tito_app/screens/screens.dart';
import 'package:tito_app/widgets/widgets.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title:
                  'Time is your most valuable asset, and it\'s a limited resource',
              body: '',
              image: buildImage('assets/images/onboarding_1.png'),
              decoration: getPageDecoration(TitoColors.green),
            ),
            PageViewModel(
              title: 'Monitoring your time can be really hard',
              body: '',
              image: buildImage('assets/images/onboarding_2.png'),
              decoration: getPageDecoration(TitoColors.red),
            ),
            PageViewModel(
              title: 'But not with TapInTapOut!',
              body: '',
              image: buildImage('assets/images/onboarding_3.png'),
              decoration: getPageDecoration(TitoColors.pink),
            ),
            PageViewModel(
              title:
                  'Monitor your time for 1 week (or more!) and see how other businesses (like yours) spend their time on average',
              body: '',
              footer: ButtonWidget(
                text: 'I\'m ready!',
                onClicked: () => goToHome(context),
              ),
              image: buildImage('assets/images/onboarding_4.png'),
              decoration: getPageDecoration(TitoColors.purple),
            ),
          ],
          done: Text('I\'m ready!',
              style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: () => goToHome(context),
          showSkipButton: true,
          skip: Text('Skip'),
          onSkip: () => goToHome(context),
          next: Icon(Icons.arrow_forward),
          dotsDecorator: getDotDecoration(),
          onChange: (index) => print('Page $index selected'),
          globalBackgroundColor: Theme.of(context).primaryColor,
          skipFlex: 0,
          nextFlex: 0,
          // isProgressTap: false,
          // isProgress: false,
          // showNextButton: false,
          // freeze: true,
          // animationDuration: 1000,
        ),
      );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => NavScreen()),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color(0xFFBDBDBD),
        //activeColor: Colors.orange,
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration(Color pageColor) => PageDecoration(
        titleTextStyle: TextStyle(
            fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
        bodyTextStyle: TextStyle(fontSize: 20, color: Colors.white),
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: pageColor,
      );
}
