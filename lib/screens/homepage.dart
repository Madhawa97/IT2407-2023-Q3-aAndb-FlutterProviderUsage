import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/eligibilityProvider.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String GradeForMaths = "";
  String GradeForIT = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
          color: Colors.amber,
        )),
        Text("Enter your marks for Maths"),
        TextField(onChanged: (value) {
          GradeForMaths = value;
        }),
        SizedBox(height: 40),
        Text("Enter your marks for IT"),
        TextField(onChanged: (value) {
          GradeForIT = value;
        }),
        SizedBox(height: 40),
        TextButton(
          onPressed: () {
            context
                .read<EligibilityProvider>()
                .checkEli(GradeForMaths, GradeForIT);
          },
          child: Text("Check"),
        ),
        SizedBox(height: 40),
        Text(
            "Your are Eligibile for : ${context.watch<EligibilityProvider>().eligibleFor.toString()}"),
        Expanded(
            child: Container(
          color: Colors.amber,
        )),
      ],
    );
  }
}
