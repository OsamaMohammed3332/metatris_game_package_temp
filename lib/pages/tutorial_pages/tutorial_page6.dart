import 'package:flutter/material.dart';
import 'package:metatris_game_package/pages/helper/language_constants.dart';

import '../../routes/routes.dart';
import 'widgets/tutorial_pages_appbar.dart';
import 'widgets/tutorial_pages_next_button.dart';

class TutorialPage6 extends StatelessWidget {
  const TutorialPage6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const TutorialPagesAppBar(),
      floatingActionButton:
          const TutorialPagesNextButton(routeName: RouteManager.tutorialPage7),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                translation(context).theGameWillIncrease,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Image(
                image: const AssetImage("assets/images/tutorial/Slide6.PNG"),
                height: (MediaQuery.of(context).size.height / 2) - 20,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}