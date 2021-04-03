// this is  where we take user input then we switch to next screen to show result,screen1
import 'package:bmi_calculator/Constants.dart';
import 'resultScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Constants.dart';
import 'resultScreen.dart';
import 'refactors.dart';
import 'Logic.dart';

// all constants are moved ro Constant.dart file
enum Genders {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //this is for ternary operator,these are properties
  Genders genderColor;
  int height = 180;
  int weight = 70;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, //left to right
        crossAxisAlignment: CrossAxisAlignment.stretch, //top to bottom
        children: <Widget>[
          //male and Female cards
          Expanded(
            child: Row(children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      genderColor = Genders.male;
                    });
                  },
                  child: card(
                    colour: genderColor == Genders.male
                        ? kActiveColor
                        : Colors.blueGrey[800],
                    cardInput: Column(
                      //to bring everything inside card at center
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 90,
                        ),
                        SizedBox(height: 15.0),
                        Text(
                          "Male",
                          //labelStyle is in Constant
                          style: kLabelStyle,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      genderColor = Genders.female;
                    });
                  },
                  child: card(
                    colour: genderColor == Genders.female
                        ? kActiveColor
                        : Colors.blueGrey[800],
                    cardInput: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.venus,
                          size: 90,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          "Female",
                          //labelStyle is in Constant
                          style: kLabelStyle,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
          //height and scroll bar
          Expanded(
            child: card(
              colour: kActiveColor,
              cardInput: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Height",
                    style: kLabelStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //this is to make cm and number come of one line/base
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        //we make this os that the value changes when we slide
                        height.toString(),
                        style: kLabelStyle2,
                      ),
                      Text(
                        "cm",
                        style: kLabelStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: Color(0xff64FFDA),
                      overlayColor: Color(0x2964FFDA),
                      activeTrackColor: Colors.blueGrey[300],
                      inactiveTrackColor: Colors.blueGrey[800],
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          print(newValue);
                          height = newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          //weight and Age
          Expanded(
            child: Row(children: <Widget>[
              Expanded(
                child: card(
                  colour: kActiveColor,
                  cardInput: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Weight",
                        style: kLabelStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: kLabelStyle2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyRoundButton(
                            icon: FontAwesomeIcons.minus,
                            press: () {
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                          SizedBox(width: 15),
                          MyRoundButton(
                            icon: FontAwesomeIcons.plus,
                            press: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: card(
                  colour: kActiveColor,
                  cardInput: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Age",
                        style: kLabelStyle,
                      ),
                      Text(
                        age.toString(),
                        style: kLabelStyle2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyRoundButton(
                            icon: FontAwesomeIcons.minus,
                            press: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                          SizedBox(width: 15),
                          MyRoundButton(
                            icon: FontAwesomeIcons.plus,
                            press: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ),
          //button
          MyMainButton(
            buttonName: "Calculate",
            myTap: () {
              Calculation calc = Calculation(heightt: height, weightt: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ResultPage(
                          fromulaResult: calc.formula(),
                          resultComment2: calc.resultComment(),
                          getInterpretation2: calc.getInterpretation(),
                        )),
              );
            },
          )
        ],
      ),
    );
  }
}
