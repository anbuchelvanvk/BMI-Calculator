import 'package:flutter/material.dart';
import 'package:bmicalc/constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmicalc/second_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int heightSlider = 120;
  int age = 25;
  int weight = 35;
  Color maleColour = Color(0xff033e66);
  Color femaleColour = Color(0xff033e66);

  void calculateBMI(){
    var heightInMeter = heightSlider / 100;
    var bmi = weight / (heightInMeter * heightInMeter);
    Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen(bmiResult: bmi.round())));
  }

  void selectGender(bool gender) {
    if (gender) {
      setState(() {
        maleColour = blueColor;
        femaleColour = selectedColor;
      });
    } else {
      setState(() {
        femaleColour = blueColor;
        maleColour = selectedColor;
      });
    }
  }

  addSubAge(bool Ageadd) {
    if (Ageadd) {
      setState(() {
        age++;
      });
    } else {
      setState(() {
        if (age > 0) {
          age--;
        }
      });
    }
  }

    addSubWeight(bool Weightadd) {
    if (Weightadd) {
      setState(() {
        weight++;
      });
    } else {
      setState(() {
        if (weight > 0) {
          weight--;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI Calculator',
          style: TextStyle(color: Colors.white, fontFamily: 'Product',),
        ),
        centerTitle: true,
        backgroundColor: backgroundColor,
      ),
      backgroundColor: darkBlueColour,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectGender(true);
                        });
                      },
                      child: ReusableClass(
                        Colour: maleColour,
                        cardChild: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: FaIcon(
                                FontAwesomeIcons.mars,
                                color: Colors.white,
                                size: 80,
                              ),
                            ),
                            Text(
                              "Male",
                              style: textstyle
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectGender(false);
                        });
                      },
                      child: ReusableClass(
                        Colour: femaleColour,
                        cardChild: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: FaIcon(
                                FontAwesomeIcons.venus,
                                color: Colors.white,
                                size: 80,
                              ),
                            ),
                            Text("Female", style: textstyle),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableClassForHeight(
                Colour: blueColor,
                cardChild: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Height", style: textstyle),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("${heightSlider}", style: numberTextStyle),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("cm", style: numberTextStyle),
                        ),
                      ],
                    ),
                    Slider(
                      min: 120.0,
                      max: 200.0,
                      value: heightSlider.toDouble(),
                      activeColor: Colors.white,
                      inactiveColor: Colors.white70,
                      thumbColor: Colors.pink,
                      onChanged: (double value) {
                        setState(() {
                          heightSlider = value.toInt();
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
                    child: ReusableClass(
                      Colour: blueColor,
                      cardChild: Column(
                        children: [
                          Text("Age", style: textstyle),
                          Text("${age}", style: numberTextStyle),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RoundButton(
                                  icons: FontAwesomeIcons.plus,
                                  onPressed: (){
                                    setState(() {
                                      addSubAge(true);
                                    });
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RoundButton(
                                  icons: FontAwesomeIcons.minus,
                                  onPressed: (){
                                    setState(() {
                                      addSubAge(false);
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
                    child: ReusableClass(
                      Colour: blueColor,
                      cardChild: Column(
                        children: [
                          Text("Weight", style: textstyle),
                          Text("${weight}", style: numberTextStyle),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RoundButton(
                                  icons: FontAwesomeIcons.plus,
                                  onPressed: (){
                                    setState(() {
                                      addSubWeight(true);
                                    });
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RoundButton(
                                  icons: FontAwesomeIcons.minus,
                                  onPressed: (){
                                    setState(() {
                                      addSubWeight(false);
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
            GestureDetector(
              onTap: (){
                calculateBMI();
              },
              child: Container(
                height: 50,
                margin: const EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.pink,
                ),
                child: Center(
                  child: Text(
                    "Calculate BMI",
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
      ),
    );
  }
}

class ReusableClass extends StatelessWidget {
  ReusableClass({required this.Colour, required this.cardChild});

  Color Colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colour,
      ),
      height: 400,
      width: 200,
    );
  }
}

class ReusableClassForHeight extends StatelessWidget {
  ReusableClassForHeight({required this.Colour, required this.cardChild});

  Color Colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colour,
      ),
      height: 400,
      width: 600,
    );
  }
}

class RoundButton extends StatelessWidget {
  const RoundButton({super.key, required this.icons, required this.onPressed});

  final IconData icons;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icons),
      onPressed: onPressed,
      elevation: 6.0,
      constraints: BoxConstraints(minWidth: 56.0, minHeight: 56.0),
      shape: CircleBorder(),
      fillColor: Colors.grey,
    );
  }
}
