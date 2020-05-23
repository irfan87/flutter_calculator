import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1 = 0;
  var num2 = 0;
  var sum = 0;

  final TextEditingController textEditingController1 =
      TextEditingController(text: "0");
  final TextEditingController textEditingController2 =
      TextEditingController(text: "0");

  void additional() {
    this.setState(() {
      num1 = int.parse(textEditingController1.text);
      num2 = int.parse(textEditingController2.text);

      sum = num1 + num2;
    });
  }

  void substract() {
    this.setState(() {
      num1 = int.parse(textEditingController1.text);
      num2 = int.parse(textEditingController2.text);

      sum = num1 - num2;
    });
  }

  void multiply() {
    this.setState(() {
      num1 = int.parse(textEditingController1.text);
      num2 = int.parse(textEditingController2.text);

      sum = num1 * num2;
    });
  }

  void divide() {
    this.setState(() {
      num1 = int.parse(textEditingController1.text);
      num2 = int.parse(textEditingController2.text);

      sum = num1 ~/ num2;
    });
  }

  void clearField() {
    this.setState(() {
      textEditingController1.text = "0";
      textEditingController2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Output: $sum",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.purple,
                      fontWeight: FontWeight.bold)),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Enter First Number"),
                controller: textEditingController1,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Enter Second Number"),
                controller: textEditingController2,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    child: Text("+"),
                    color: Colors.greenAccent,
                    onPressed: additional,
                  ),
                  MaterialButton(
                    child: Text("-"),
                    color: Colors.greenAccent,
                    onPressed: substract,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    child: Text("*"),
                    color: Colors.greenAccent,
                    onPressed: multiply,
                  ),
                  MaterialButton(
                    child: Text("/"),
                    color: Colors.greenAccent,
                    onPressed: divide,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MaterialButton(
                    child: Text("Clear"),
                    color: Colors.redAccent,
                    onPressed: clearField,
                  )
                ],
              )
            ],
          )),
    );
  }
}
