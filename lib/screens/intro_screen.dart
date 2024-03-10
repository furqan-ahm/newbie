import 'package:flutter/material.dart';
import 'package:newbie/widgets/background_widget.dart';
import 'package:rive/rive.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {


  SimpleAnimation currentAnim=SimpleAnimation('Intro3');
  late Artboard riveArtBoard;

  @override
  void initState() {
    super.initState();
  }

  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: Center(
          child: RiveAnimation.asset(
            'assets/anims/newbie_intro.riv',
            placeHolder: Container(),
            onInit: (artBoard) {
              artBoard.addController(currentAnim);
              riveArtBoard=artBoard;
            },
            controllers: [currentAnim],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          riveArtBoard.removeController(currentAnim);
          currentAnim=SimpleAnimation('Intro2');
          riveArtBoard.addController(currentAnim);
        });
      }),
    );
  }
}
