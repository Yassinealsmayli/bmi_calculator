import 'package:bmi_claculator/components/left_bar.dart';
import 'package:bmi_claculator/components/right_bar.dart';
import 'package:bmi_claculator/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double claculatednum = 0;
  String phrase = "";

  TextEditingController height = TextEditingController();
  TextEditingController mass = TextEditingController();

  double calculate(double height, double mass) {
    return mass / (height * height);
  }

  String getPhrase(double n) {
    if (n > 25) {
      return "You're over weight";
    } else if (n >= 18.5 && n <= 25) {
      return "You have normal weight";
    } else {
      return "You're under weight";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          SizedBox(
            height: defaultPadding,
          ),
          const Text(
            "BMI Calculator",
            style: TextStyle(color: primaryColor),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 75,
                width: 150,
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  controller: height,
                  maxLines: 1,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    label: Text("height(in m)".toUpperCase()),
                    labelStyle:
                        const TextStyle(fontSize: 30, color: secondaryColor),
                  ),
                ),
              ),
              SizedBox(
                height: 75,
                width: 150,
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  controller: mass,
                  maxLines: 1,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    label: Text("mass(in kg)".toUpperCase()),
                    labelStyle:
                        const TextStyle(color: secondaryColor, fontSize: 30),
                  ),
                ),
              ),
            ],
          ),
          TextButton(
              onPressed: () {
                try {
                  setState(() {
                    claculatednum = calculate(
                        double.parse(height.text), double.parse(mass.text));
                    phrase = getPhrase(claculatednum);
                  });
                } catch (e) {
                  return;
                }
              },
              child: const Text(
                "Claculate",
                style: TextStyle(fontSize: 20, color: primaryColor),
              )),
          SizedBox(
            height: defaultPadding * 2,
          ),
          Text(
            claculatednum.toStringAsFixed(2),
            style: const TextStyle(fontSize: 50, color: secondaryColor),
          ),
          SizedBox(
            height: defaultPadding * 2,
          ),
          Text(
            phrase,
            style: const TextStyle(color: secondaryColor, fontSize: 30),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          const LeftBar(),
          SizedBox(
            height: defaultPadding,
          ),
          const RightBar()
        ],
      ),
    );
  }
}
