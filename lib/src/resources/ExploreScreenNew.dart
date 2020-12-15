import 'package:fashionshop/src/model/category1.dart';
import 'package:fashionshop/src/resources/widget/category1_button.dart';
import 'package:fashionshop/src/resources/widget/category2_dropdown.dart';
import 'package:flutter/material.dart';

List<Color> listBgColors = [
  Color(0xffADDBDE),
  Color(0xffF6A1B5),
  Color(0xffE1B857),
  Color(0xff94C163),
];

class ExploreScreenNew extends StatefulWidget {
  @override
  _ExploreScreenNewState createState() => _ExploreScreenNewState();
}

class _ExploreScreenNewState extends State<ExploreScreenNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
        ),
        textTheme: TextTheme(),
        backgroundColor: Color(0xFF4ab3b5),
        title: Center(
          child: Text(
            "Danh mục",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Category1Button(
                  data: Category1(
                      id: "",
                      name: "asdsadsadsadsadas",
                      url: "4367abe68722992908c1b41688926590.png"),
                  isSelected: index == 3 ? true : false,
                  bgColor: listBgColors[index % 3],
                );
              },
            ),
          ),
          Expanded(
            flex: 7,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10,
                  ),
                  color: Color(0xffEBECE9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Nhà Cửa",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Colors.black54,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: listBgColors[0],
                    padding: EdgeInsets.all(5),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Category2Dropdown(
                          data: Category1(
                            id: "",
                            name: "asdsadsadsadsadas",
                            url: "4367abe68722992908c1b41688926590.png",
                          ),
                        );
                      },
                      itemCount: 5,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
