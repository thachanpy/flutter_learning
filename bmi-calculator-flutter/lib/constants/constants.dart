import 'package:flutter/material.dart';

const kBottomContainerHeight = 80.0;
const kBottomContainerColor = Color(0xFFEB1555);
const kActiveCardColor = Color(0xFF323244);
const kInactiveCardColor = Color(0xFF232539);
const kActiveSliderColor = kBottomContainerColor;
const kInactiveSliderColor = Color(0xFF8D8E98);
const kOverlaySliderColor = Color(0x29EB1555);
const kActionButton = Color(0xFF4C4F5E);


const kLabelTextStyle = TextStyle(
  fontSize: 20.0,
  color: Color(0x71FFFFFF),
);

const kNumberTextStyle = TextStyle(
  fontSize: 60.0,
  fontWeight: FontWeight.w900,
);

const kLargeButtonTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 25.0,
    fontWeight: FontWeight.bold
);

const kTitleTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);

const kResultTextStyle = TextStyle(
  color: Color(0xFF24D876),
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);

const kResultBMITextStyle = TextStyle(
  fontSize: 120.0,
  fontWeight: FontWeight.bold,
);

const kResultBodyTextStyle = TextStyle(
  fontSize: 26.0
);


Widget kBMIAppBar = AppBar(
  centerTitle: true,
  title: Text("BMI CALCULATOR"),
);