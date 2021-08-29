import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {

  ResultPage({
    @required this.bmiResult,
    @required this.bmiTexts,
  });

  final String bmiResult;
  final Map<String, String> bmiTexts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kBMIAppBar,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Align(
                child: Container(
                  child: Text(
                    "Your Result",
                    style: kTitleTextStyle,
                  ),
                ),
              )
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    bmiTexts["result"],
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kResultBMITextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      bmiTexts['interpretation'],
                      textAlign: TextAlign.center,
                      style: kResultBodyTextStyle,
                    ),
                  )
                ],
              ),
            )
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: "RE-CALCULATE",
          ),
        ],
      ),
    );
  }
}
