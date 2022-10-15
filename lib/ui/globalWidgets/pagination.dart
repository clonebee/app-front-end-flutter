import 'package:cbmes_v1/provider/apiProvider.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Pagination extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    APIProvider apiProvider = Provider.of<APIProvider>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    return Container(
      // color: Colors.blue,
      alignment: Alignment.center,
      width: double.infinity,
      height: 50,
      child: Center(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: apiProvider.qtyOfPages,
          itemBuilder: (BuildContext context, int index) {
            return IconButton(
              onPressed: () {
                apiProvider.currentPage = index;
                apiProvider.setApiChangePage();
              },
              icon: Container(
                  alignment: Alignment.center,
                  width: 30,
                  // margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: index == apiProvider.currentPage ? themesCB.highlightColor : themesCB.backColor,
                    border: Border.all(width: 0.5, color: themesCB.borderColor),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  // color: Theme.of(context).hintColor,
                  child: Text(
                    "$index",
                    style: TextStyle(
                      color: index == apiProvider.currentPage ? Colors.white : themesCB.fontColor,
                      fontWeight: FontWeight.w800,
                    ),
                  )),
            );
          },
        ),
      ),
    );
  }
}
