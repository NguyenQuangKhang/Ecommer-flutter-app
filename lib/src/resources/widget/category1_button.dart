import 'package:fashionshop/src/model/category1.dart';
import 'package:fashionshop/src/new_model/category.dart';
import 'package:flutter/material.dart';

class Category1Button extends StatelessWidget {
  final Category data;
  final bool isSelected;
  final Color bgColor;
  final VoidCallback onTap;
  const Category1Button({this.isSelected=false,this.bgColor,this.data,this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: isSelected?bgColor:Colors.white,
        height: MediaQuery.of(context).size.height / 6,
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Image.network(
               data.icon,
                color: isSelected?Colors.red: Colors.black54,
              ),
            ),

            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 1,
              child: Text(
          data.name,
                style: TextStyle(
                  color: isSelected?Colors.black:Colors.black54,
                  fontSize: 10,
                ),
                textAlign: TextAlign.center,
              ),
            ),
           if(!isSelected) Container(
              height: 1,
              color: Colors.black45,
            )
          ],
        ),
      ),
    );
  }
}
