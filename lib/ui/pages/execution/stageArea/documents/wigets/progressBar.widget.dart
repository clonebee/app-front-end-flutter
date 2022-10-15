import 'package:flutter/material.dart';

Widget progressBar({@required BuildContext context, @required Color color, @required double widthx}) {
  return Container(
    width: 270,
    height: 10,
    decoration: BoxDecoration(
      color: Theme.of(context).primaryColor,
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          offset: Offset(5, 2),
          blurRadius: 5,
        )
      ],
      border: Border.all(width: 0.5, color: color),
      borderRadius: BorderRadius.all(Radius.circular(3)),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(3)),
      child: Row(
        children: [
          Container(
            width: widthx,
            height: 10,
            color: color,
          ),
        ],
      ),
    ),
  );
}
