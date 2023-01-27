import 'package:flutter/material.dart';

class EligibilityProvider extends ChangeNotifier {
  List<String> eligibleFor = [];

  checkEli(String mathsResult, String itresult) {
    if (mathsResult == "A" || itresult == "B" || itresult == "A") {
      eligibleFor.add('AI');
      notifyListeners();
    }
    if (mathsResult == "A" || mathsResult == "B") {
      eligibleFor.add('HM');
      notifyListeners();
    }
    if ((itresult == "A" && mathsResult == "A") ||
        (itresult == "A" && mathsResult == "B")) {
      eligibleFor.add('IP');
      notifyListeners();
    }
  }
}
