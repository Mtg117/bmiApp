import 'package:bmi_application/pages/result_screen.dart';
import 'package:bmi_application/widgets/custom_buttun.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int age = 30;
  int weight = 60;
  int height = 174;
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0a0c21),
      appBar: AppBar(
        backgroundColor: Color(0xFF0a0c21),
        title: Text(
          'bmi Calculator',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color:
                              (isMale) ? Color(0xFFeb1555) : Color(0xFF1D1E33),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male_rounded,
                              color: Colors.white,
                              size: 80,
                            ),
                            Text(
                              "Male",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color:
                              (!isMale) ? Color(0xFFeb1555) : Color(0xFF1D1E33),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female_rounded,
                              color: Colors.white,
                              size: 80,
                            ),
                            Text(
                              "Female",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 20),
                color: Color(0xFF1D1E33),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Height",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "cm",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 200,
                      activeColor: Color(0xFFeb1555),
                      inactiveColor: Color(0xFF525365),
                      onChanged: (value) {
                        setState(() {
                          height = value.toInt();
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
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF1D1E33),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Age",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            age.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton.filled(
                                onPressed: () {
                                  setState(() {
                                    if (age > 0) {
                                      age--;
                                    } else {
                                      age = 0;
                                    }
                                  });
                                },
                                icon: Icon(Icons.remove),
                                style: IconButton.styleFrom(
                                  backgroundColor: Color(0xFF4b4e5d),
                                ),
                              ),
                              IconButton.filled(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                icon: Icon(Icons.add),
                                style: IconButton.styleFrom(
                                  backgroundColor: Color(0xFF4b4e5d),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF1D1E33),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Weight",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            weight.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton.filled(
                                onPressed: () {
                                  setState(() {
                                    if (weight > 0) {
                                      weight--;
                                    } else {
                                      weight = 0;
                                    }
                                  });
                                },
                                icon: Icon(Icons.remove),
                                style: IconButton.styleFrom(
                                  backgroundColor: Color(0xFF4b4e5d),
                                ),
                              ),
                              IconButton.filled(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                icon: Icon(Icons.add),
                                style: IconButton.styleFrom(
                                  backgroundColor: Color(0xFF4b4e5d),
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
            customButton(
              text: "Calculate",
              onPressed: () {
                double heightInMeters = height / 100;
                double bmi = weight / (heightInMeters * heightInMeters);
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return ResultScreen(
                      result: bmi,
                    );
                  },
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
