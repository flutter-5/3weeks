import 'package:flutter/material.dart';
import 'package:flutter_bmi_app/pages/home/widgets/gender_box.dart';
import 'package:flutter_bmi_app/pages/home/widgets/slider_box.dart';
import 'package:flutter_bmi_app/pages/result/result_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isMale = true;
  void onGenderChanged(bool male) {
    setState(() {
      isMale = male;
    });
  }

  double height = 170;
  void onHeightChaged(double newHeight) {
    setState(() {
      height = newHeight;
    });
  }

  double weight = 70;
  void onWeightChanged(double newWeight) {
    setState(() {
      weight = newWeight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          children: [
            GenderBox(isMale, onGenderChanged),
            Spacer(),
            SliderBox('Height', height, 'cm', onHeightChaged),
            Spacer(),
            SliderBox('Weight', weight, 'kg', onWeightChanged),
            Spacer(),
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  final meter = height / 100;
                  final bmi = weight / (meter * meter);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ResultPage(bmi);
                        },
                        settings: RouteSettings(arguments: bmi),
                      ));
                },
                child: Text('CALCULATE'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
