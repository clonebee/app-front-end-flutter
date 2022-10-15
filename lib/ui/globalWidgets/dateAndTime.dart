import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future selectDate({@required BuildContext context, @required DateTime selectedDate}) async {
  ThemesCB themesCB = Provider.of<ThemesCB>(context, listen: false);

  final DateTime newDate = await showDatePicker(
    context: context,
    initialDate: selectedDate,
    firstDate: DateTime(1950, 1),
    lastDate: DateTime(2101),
    helpText: "Selecione uma data.",
    builder: (BuildContext context, Widget child) {
      return Theme(
        data: ThemeData.light().copyWith(
          // primaryColor: const Color(0xFFD8483E),
          dialogBackgroundColor: themesCB.backColor,
          colorScheme: ColorScheme.light(
            primary: const Color(0xffFF6800),
            onSurface: themesCB.fontColor,
            // onBackground: Colors.black
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              primary: themesCB.fontColor, // button text color
            ),
          ),
          // buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
        ),
        child: child,
      );
    },
  );

  if (newDate != null && newDate != selectedDate) {
    selectedDate = newDate;
  }

  return selectedDate;
}

Future selectTime({@required BuildContext context, @required TimeOfDay selectedTime}) async {
  final TimeOfDay newTime = await showTimePicker(
    context: context,
    initialTime: selectedTime,
    builder: (BuildContext context, Widget child) {
      return Theme(
        data: ThemeData.light().copyWith(
          // primaryColor: const Color(0xFFD8483E),
          // accentColor: const Color(0xFF8CE7F1),
          colorScheme: ColorScheme.light(primary: const Color(0xffFF6800)),
          // buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
        ),
        child: child,
      );
    },
  );
  if (newTime != null) {
    selectedTime = newTime;
  }
  return selectedTime;
}
