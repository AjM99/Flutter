import 'package:flutter/material.dart';
import 'Constants.dart';

// no need to think hard on this class its just refactor done using flutter outline-> remove widget
class card extends StatelessWidget {
  //after creating a const card, to make changes in it we make this constructor
  card({this.cardInput, this.colour});
  final Widget cardInput;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardInput,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}

class MyMainButton extends StatelessWidget {
  MyMainButton({@required this.myTap, @required this.buttonName});
  final Function myTap;
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myTap,
      child: Container(
        child: Center(
          child: Text(buttonName, style: kButtonStyle),
        ),
        height: 60,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: Color(0xff64FFDA),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

class MyRoundButton extends StatelessWidget {
  MyRoundButton({@required this.icon, @required this.press});
  final IconData icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: press,
      shape: CircleBorder(),
      fillColor: Colors.blueGrey[700],
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
    );
  }
}
