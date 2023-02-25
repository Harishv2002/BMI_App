import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_content.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'result_page.dart';
import 'bottom_button.dart';
import 'calculator_brain.dart';
import 'dart:async';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kColorOfInactiveContainer;
  Color femaleCardColor = kColorOfInactiveContainer;
  int height = 180;
  int weight = 60;
  int age = 20;
  Timer? timer;
  void updateColor(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (maleCardColor == kColorOfInactiveContainer) {
        maleCardColor = kColorOfActiveContainer;
        femaleCardColor = kColorOfInactiveContainer;
      }
    } else {
      if (femaleCardColor == kColorOfInactiveContainer) {
        femaleCardColor = kColorOfActiveContainer;
        maleCardColor = kColorOfInactiveContainer;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(Gender.male);
                        });
                      },
                      child: ReusableCard(
                        colorOfCard: maleCardColor,
                        cardChild: cardContent(
                          icon: FontAwesomeIcons.mars,
                          label: 'MALE',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(Gender.female);
                        });
                      },
                      child: ReusableCard(
                        colorOfCard: femaleCardColor,
                        cardChild: cardContent(
                          icon: FontAwesomeIcons.venus,
                          label: 'FEMALE',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colorOfCard: kColorOfActiveContainer,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: kTextStyle,
                    ),
                    Row(
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Text(
                          '$height',
                          style: kNumberTextStyle,
                        ),
                        Text(
                          'cm',
                          style: kTextStyle,
                        ),
                      ],
                    ),
                    Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      activeColor: Color(0XFFEB1555),
                      inactiveColor: Color(0XFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colorOfCard: kColorOfActiveContainer,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: kTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onLongPress: () {
                                  setState(() {
                                    timer = Timer.periodic(
                                        Duration(milliseconds: 50), (timer) {
                                      setState(() {
                                        weight--;
                                      });
                                    });
                                  });
                                },
                                onLongPressEnd: (_) => setState(() {
                                  timer?.cancel();
                                }),
                                child: FloatingActionButton(
                                  backgroundColor: Color(0XFF4C4F5E),
                                  child: Icon(
                                    FontAwesomeIcons.minus,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              GestureDetector(
                                onLongPress: () {
                                  setState(() {
                                    timer = Timer.periodic(
                                        Duration(milliseconds: 50), (timer) {
                                      setState(() {
                                        weight++;
                                      });
                                    });
                                  });
                                },
                                onLongPressEnd: (_) => setState(() {
                                  timer?.cancel();
                                }),
                                child: FloatingActionButton(
                                  backgroundColor: Color(0XFF4C4F5E),
                                  child: Icon(
                                    FontAwesomeIcons.plus,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colorOfCard: kColorOfActiveContainer,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: kTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onLongPress: () {
                                  setState(() {
                                    timer = Timer.periodic(
                                        Duration(milliseconds: 50), (timer) {
                                      setState(() {
                                        age--;
                                      });
                                    });
                                  });
                                },
                                onLongPressEnd: (_) => setState(() {
                                  timer?.cancel();
                                }),
                                child: FloatingActionButton(
                                  backgroundColor: Color(0XFF4C4F5E),
                                  child: Icon(
                                    FontAwesomeIcons.minus,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              GestureDetector(
                                onLongPress: () {
                                  setState(() {
                                    timer = Timer.periodic(
                                        Duration(milliseconds: 50), (timer) {
                                      setState(() {
                                        age++;
                                      });
                                    });
                                  });
                                },
                                onLongPressEnd: (_) => setState(() {
                                  timer?.cancel();
                                }),
                                child: FloatingActionButton(
                                  backgroundColor: Color(0XFF4C4F5E),
                                  child: Icon(
                                    FontAwesomeIcons.plus,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
                buttonTitle: 'CALCULATE',
                onTap: () {
                  CalculatorBrain cal =
                      CalculatorBrain(height: height, weight: weight);

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultsPage(
                          bmiResult: cal.calculateBMI(),
                          resultText: cal.getResult(),
                          interpretation: cal.getInterpretation(),
                        ),
                      ));
                }),
          ],
        ));
  }
}
