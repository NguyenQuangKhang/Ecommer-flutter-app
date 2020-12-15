import 'package:fashionshop/src/model/category1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category2Dropdown extends StatefulWidget {
  final Category1 data;
  final VoidCallback onDropdownTap;
  final VoidCallback onTap;
  final VoidCallback onTapDropdownItem;

  const Category2Dropdown({this.data, this.onTap, this.onDropdownTap,this.onTapDropdownItem});

  @override
  _Category2DropdownState createState() => _Category2DropdownState();
}

class _Category2DropdownState extends State<Category2Dropdown> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 30,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          padding: EdgeInsets.only(left: 5, top: 5, bottom: 5),
          margin: EdgeInsets.only(bottom: 5),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 7,
                child: InkWell(
                  onTap: widget.onTap,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        widget.data.name,
                        style: TextStyle(color: Colors.black87, fontSize: 10),
                      ),
                      Container(
                        width: 1,
                        color: Colors.black54,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: Center(
                    child: Icon(
                      isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                      size: 20,
                      color: Colors.black54,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        if (isExpanded)
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            margin: EdgeInsets.only(
              bottom: 5,
            ),
            child: GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              childAspectRatio: 4/6,
              mainAxisSpacing: 5,
              physics: NeverScrollableScrollPhysics(),
              crossAxisSpacing: 5,
              children: List.generate(
                10,
                (index) => InkWell(
                  onTap: widget.onTapDropdownItem,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex:4,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Expanded(flex:2,child: Text(index==1?"Linh kiện và phụ kiện điện tử nhà bếp":"asdasdsad",style: TextStyle(fontSize: 10,),textAlign: TextAlign.center,),),
                    ],
                  ),
                ),
              ),
            ),
          )
      ],
    );
  }
}
