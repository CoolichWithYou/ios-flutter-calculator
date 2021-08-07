import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Calculator()));
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String value = '0';
  double numOne = 0.0;
  double numTwo = 0.0;
  String operand = "";

  buttonPressed(String buttonText) {
    print(buttonText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.grey[900],
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Text(
                    value,
                    style: TextStyle(
                        fontSize: 92, fontFamily: 'Segoe', color: Colors.white),
                    maxLines: 1,
                    textAlign: TextAlign.right,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.topLeft,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      child: ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(primary: Colors.grey[400]),
                        onPressed: () {
                          setState(() {
                            value = '0';
                            numOne = 0.0;
                            numTwo = 0.0;
                            operand = "";
                          });
                        },
                        child: Text(
                          "C",
                          style: TextStyle(
                              fontSize: 42,
                              fontFamily: 'Segoe',
                              color: Colors.grey[800]),
                        ),
                      ),
                      flex: 1),
                  Expanded(
                      child: ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(primary: Colors.grey[400]),
                        onPressed: () {},
                        child: Text(
                          "",
                          style: TextStyle(
                              fontSize: 42,
                              fontFamily: 'Segoe',
                              color: Colors.grey[800]),
                        ),
                      ),
                      flex: 1),
                  Expanded(
                      child: ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(primary: Colors.grey[400]),
                        onPressed: () {},
                        child: Text(
                          "",
                          style: TextStyle(
                              fontSize: 42,
                              fontFamily: 'Segoe',
                              color: Colors.grey[800]),
                        ),
                      ),
                      flex: 1),
                  Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange[700]),
                        onPressed: () {
                          setState(() {
                            numOne = double.parse(value);
                            operand = "/";
                            value = '0';
                          });
                        },
                        child: Text(
                          "/",
                          style: TextStyle(fontSize: 42, fontFamily: 'Segoe'),
                        ),
                      ),
                      flex: 1),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.topLeft,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      child: ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(primary: Colors.grey[300]),
                        onPressed: () {
                          setState(() {
                            if (value == '0') {
                              value = "7";
                            } else {
                              value += "7";
                            }
                          });
                        },
                        child: Text(
                          "7",
                          style: TextStyle(
                              fontSize: 42,
                              fontFamily: 'Segoe',
                              color: Colors.black),
                        ),
                      ),
                      flex: 1),
                  Expanded(
                      child: ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(primary: Colors.grey[300]),
                        onPressed: () {
                          setState(() {
                            if (value == '0') {
                              value = "8";
                            } else {
                              value += "8";
                            }
                          });
                        },
                        child: Text(
                          "8",
                          style: TextStyle(
                              fontSize: 42,
                              fontFamily: 'Segoe',
                              color: Colors.black),
                        ),
                      ),
                      flex: 1),
                  Expanded(
                      child: ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(primary: Colors.grey[300]),
                        onPressed: () {
                          setState(() {
                            if (value == '0') {
                              value = "9";
                            } else {
                              value += "9";
                            }
                          });
                        },
                        child: Text(
                          "9",
                          style: TextStyle(
                              fontSize: 42,
                              fontFamily: 'Segoe',
                              color: Colors.black),
                        ),
                      ),
                      flex: 1),
                  Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange[700]),
                        onPressed: () {
                          setState(() {
                            numOne = double.parse(value);
                            operand = "*";
                            value = '0';
                          });
                        },
                        child: Text(
                          "*",
                          style: TextStyle(fontSize: 42, fontFamily: 'Segoe'),
                        ),
                      ),
                      flex: 1),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.topLeft,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      child: ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(primary: Colors.grey[300]),
                        onPressed: () {
                          setState(() {
                            if (value == '0') {
                              value = "4";
                            } else {
                              value += "4";
                            }
                          });
                        },
                        child: Text(
                          "4",
                          style: TextStyle(
                              fontSize: 42,
                              fontFamily: 'Segoe',
                              color: Colors.black),
                        ),
                      ),
                      flex: 1),
                  Expanded(
                      child: ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(primary: Colors.grey[300]),
                        onPressed: () {
                          setState(() {
                            if (value == '0') {
                              value = "5";
                            } else {
                              value += "5";
                            }
                          });
                        },
                        child: Text(
                          "5",
                          style: TextStyle(
                              fontSize: 42,
                              fontFamily: 'Segoe',
                              color: Colors.black),
                        ),
                      ),
                      flex: 1),
                  Expanded(
                      child: ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(primary: Colors.grey[300]),
                        onPressed: () {
                          setState(() {
                            if (value == '0') {
                              value = "6";
                            } else {
                              value += "6";
                            }
                          });
                        },
                        child: Text(
                          "6",
                          style: TextStyle(
                              fontSize: 42,
                              fontFamily: 'Segoe',
                              color: Colors.black),
                        ),
                      ),
                      flex: 1),
                  Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange[700]),
                        onPressed: () {
                          setState(() {
                            numOne = double.parse(value);
                            operand = "-";
                            value = '0';
                          });
                        },
                        child: Text(
                          "-",
                          style: TextStyle(fontSize: 42, fontFamily: 'Segoe'),
                        ),
                      ),
                      flex: 1),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.topLeft,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      child: ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(primary: Colors.grey[300]),
                        onPressed: () {
                          setState(() {
                            if (value == '0') {
                              value = "1";
                            } else {
                              value += "1";
                            }
                          });
                        },
                        child: Text(
                          "1",
                          style: TextStyle(
                              fontSize: 42,
                              fontFamily: 'Segoe',
                              color: Colors.black),
                        ),
                      ),
                      flex: 1),
                  Expanded(
                      child: ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(primary: Colors.grey[300]),
                        onPressed: () {
                          setState(() {
                            if (value == '0') {
                              value = "2";
                            } else {
                              value += "2";
                            }
                          });
                        },
                        child: Text(
                          "2",
                          style: TextStyle(
                              fontSize: 42,
                              fontFamily: 'Segoe',
                              color: Colors.black),
                        ),
                      ),
                      flex: 1),
                  Expanded(
                      child: ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(primary: Colors.grey[300]),
                        onPressed: () {
                          setState(() {
                            if (value == '0') {
                              value = "3";
                            } else {
                              value += "3";
                            }
                          });
                        },
                        child: Text(
                          "3",
                          style: TextStyle(
                              fontSize: 42,
                              fontFamily: 'Segoe',
                              color: Colors.black),
                        ),
                      ),
                      flex: 1),
                  Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange[700]),
                        onPressed: () {
                          setState(() {
                            numOne = double.parse(value);
                            operand = "+";
                            value = '0';
                          });
                        },
                        child: Text(
                          "+",
                          style: TextStyle(fontSize: 42, fontFamily: 'Segoe'),
                        ),
                      ),
                      flex: 1),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.topLeft,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      child: ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(primary: Colors.grey[300]),
                        onPressed: () {
                          setState(() {
                            if (value == '0') {
                              value = "0";
                            } else {
                              value += "0";
                            }
                          });
                        },
                        child: Text(
                          "0",
                          style: TextStyle(
                              fontSize: 42,
                              fontFamily: 'Segoe',
                              color: Colors.black),
                        ),
                      ),
                      flex: 2),
                  Expanded(
                      child: ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(primary: Colors.grey[300]),
                        onPressed: () {
                          setState(() {
                            if (!value.contains(".")) {
                              value = value + ".";
                            }
                          });
                        },
                        child: Text(
                          ".",
                          style: TextStyle(
                              fontSize: 42,
                              fontFamily: 'Segoe',
                              color: Colors.black),
                        ),
                      ),
                      flex: 1),
                  Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange[700]),
                        onPressed: () {
                          setState(() {
                            numTwo = double.parse(value);

                            if (operand == "+") {
                              value = (numOne + numTwo).toString();
                            }
                            if (operand == "-") {
                              value = (numOne - numTwo).toString();
                            }
                            if (operand == "*") {
                              value = (numOne * numTwo).toString();
                            }
                            if (operand == "/") {
                              value = (numOne / numTwo).toString();
                            }

                            numOne = 0.0;
                            numTwo = 0.0;
                            //value = '0';
                          });
                        },
                        child: Text(
                          "=",
                          style: TextStyle(fontSize: 42, fontFamily: 'Segoe'),
                        ),
                      ),
                      flex: 1),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
