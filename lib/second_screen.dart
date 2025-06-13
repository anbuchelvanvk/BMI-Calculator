import 'package:bmicalc/constant.dart';
import 'package:flutter/material.dart';


class ResultScreen extends StatefulWidget {

  final int bmiResult;
  const ResultScreen({super.key, required this.bmiResult});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {

  var bmiColor = Colors.white;
  var bmiText = "Normal";
  var imagePath = "normal";

  @override
  void initState(){
    super.initState();
    updateUI();
  }

  void updateUI(){
    var bmi = widget.bmiResult;
    if(bmi < 18.5){
      bmiColor = Colors.blue;
      bmiText = "Underweight";
      imagePath = "underweight";
    } else if(bmi >= 18.5 && bmi < 24.9){
      bmiColor = Colors.green;
      bmiText = "Normal";
      imagePath = "normal";
    } else if(bmi >= 25 && bmi < 29.9){
      bmiColor = Colors.orange;
      bmiText = "Overweight";
      imagePath = "overweight";
    } else {
      bmiColor = Colors.red;
      bmiText = "Obese";
      imagePath = "obese";
    }
  }
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 11, 70, 109),
      ),
      backgroundColor: darkBlueColour,
      body: Column(
        children: [
          Container(
            width: width,
            height: 150,
            decoration: BoxDecoration(
              color: blueColor,
              borderRadius: BorderRadius.all(
              Radius.circular(5)
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Your BMI value is",
                  style: textstyle.copyWith(fontSize: 30),
                ),
                Text('${widget.bmiResult}', style: numberTextStyle),
                Text('${bmiText}', style: textstyle.copyWith(color: bmiColor),)
              ],
            ),
          ),
          Image.asset('images/${imagePath}.png', height: height*0.6,),

          GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                margin: const EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.pink,
                ),
                child: Center(
                  child: Text(
                    "Calculate Again",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Product',
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}