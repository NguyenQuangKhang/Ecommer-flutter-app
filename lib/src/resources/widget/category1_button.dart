import 'package:fashionshop/src/model/category1.dart';
import 'package:flutter/material.dart';

class Category1Button extends StatelessWidget {
  final Category1 data;
  final bool isSelected;
  final Color bgColor;
  const Category1Button({this.isSelected=false,this.bgColor,this.data});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: isSelected?bgColor:Colors.white,
      height: MediaQuery.of(context).size.height / 6,
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.network(
              data.url,
            width: 30,
            height: 30,
            color: isSelected?Colors.red: Colors.black54,
          ),

          SizedBox(
            height: 10,
          ),
          Text(
        data.name,
            style: TextStyle(
              color: isSelected?Colors.black:Colors.black54,
              fontSize: 10,
            ),
            textAlign: TextAlign.center,
          ),
         Expanded(
           child: SizedBox(),
         ),
         if(!isSelected) Container(
            height: 1,
            color: Colors.black45,
          )
        ],
      ),
    );
  }
}
