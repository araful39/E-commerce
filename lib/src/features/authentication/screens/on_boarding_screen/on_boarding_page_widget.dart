import 'package:flutter/material.dart';
import 'package:groupproject/src/features/authentication/models/model_on_boarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {

    return Container(
        padding: const EdgeInsets.all(20),
        color: model.bgColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              model.image,
              height: model.height * 0.2
            ),
            Column(
              children: [
                Text(
                  model.title,
                  style: Theme.of(context).textTheme.headline5,
                ),
                Text(
                  model.subTitle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Text(
              model.counterText,
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ));
  }
}