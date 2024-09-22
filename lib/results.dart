import 'package:flutter/material.dart';
import 'cards.dart';
import 'homePage.dart';

class Results extends StatelessWidget {
  Results(
      {required this.interpretation,
        required this.bmiResult,
        required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Results',
                style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w800),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Conbg(
              colour: Color(0xff1D1E33),
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText.toUpperCase(),style: TextStyle(color: Colors.greenAccent,fontSize: 20.0,fontWeight: FontWeight.bold),
                  ),
                  Text(bmiResult,style: TextStyle(fontSize: 100.0,fontWeight:FontWeight.w700),),
                  Text(interpretation,style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),

                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                child: Text('RE-CALCULATE',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w900,
                    )),
              ),
              height: 55.0,
              margin: EdgeInsets.only(top: 15.0),
              padding: EdgeInsets.only(bottom: 20.0),
              width: double.infinity,
              color: CalcBtColor,
            ),
          ),
        ],
      ),
    );
  }
}
