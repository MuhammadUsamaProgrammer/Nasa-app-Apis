import 'package:flutter/material.dart';

class Calendar with ChangeNotifier {
  DateTime _selectedDate = DateTime.now();
  DateTime get selectedDate => _selectedDate;

  Future showDatePickerCalendar(context) async {
    DateTime? dateTimer = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1995, 06, 16),
      lastDate: DateTime.now(),
    );
    if (dateTimer != null) {
      print(_selectedDate);
      _selectedDate = dateTimer;
      print(_selectedDate);
      notifyListeners();
    }
  }
}
