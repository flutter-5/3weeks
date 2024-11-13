import 'package:flutter/material.dart';
import 'package:flutter_bmi_app/pages/result/widgets/result_gauge.dart';
import 'package:flutter_bmi_app/pages/result/widgets/result_text.dart';

class ResultPage extends StatelessWidget {
  ResultPage(this.bmi);
  double bmi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Spacer(),

            /// 왜 object로 잡히냐고? double 로 정의 했는데???
            ResultGauge(bmi),
            SizedBox(height: 50),
            ResultText(bmi),
            Spacer(),
            SizedBox(
              width: double.infinity,
              height: 56,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Recalculate'),
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
