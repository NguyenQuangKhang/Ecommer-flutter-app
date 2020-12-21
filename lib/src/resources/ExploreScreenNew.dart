import 'package:fashionshop/src/bloc/CategoryBloc/CategoryBloc.dart';
import 'package:fashionshop/src/bloc/CategoryBloc/CategoryEvent.dart';
import 'package:fashionshop/src/bloc/CategoryBloc/CategoryState.dart';
import 'package:fashionshop/src/bloc/ProductBloc/ProductBloc.dart';
import 'package:fashionshop/src/bloc/ProductBloc/ProductEvent.dart';
import 'package:fashionshop/src/model/category1.dart';
import 'package:fashionshop/src/resources/ProductWithCatLv3_Screen.dart';
import 'package:fashionshop/src/resources/widget/category1_button.dart';
import 'package:fashionshop/src/resources/widget/category2_dropdown.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  CategoryBloc _categoryBloc;

  @override
  void initState() {
    _categoryBloc = context.bloc<CategoryBloc>();
    super.initState();
  }

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
        title: Center(
          child: Text(
            "Danh mục",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: BlocBuilder(
          bloc: _categoryBloc,
          builder: (context, state) {
            return Stack(children: [
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: ListView.builder(
                      itemCount: _categoryBloc.list_cat_1.length,
                      itemBuilder: (context, index) {
                        return Category1Button(
                          onTap: () {
                            _categoryBloc.indexSelected = index;
                            _categoryBloc.add(CategoryButtonPressed(
                                parentId: _categoryBloc.list_cat_1[index].id));
                          },
                          data: _categoryBloc.list_cat_1[index],
                          isSelected: index == _categoryBloc.indexSelected
                              ? true
                              : false,
                          bgColor: listBgColors[index % 3].withOpacity(0.7),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Column(
                      children: <Widget>[
                        InkWell(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(
                                builder: (context)=> BlocProvider<ProductBloc>(
                                  create: (context){
                                    return ProductBloc(

                                    )..add(ProductByCategoryCodeEvent(categoryPath: _categoryBloc.list_cat_1[_categoryBloc.indexSelected].categoryPath));
                                  },
                                  child:  ProductWithSubCat_Screen(title: _categoryBloc.list_cat_1[_categoryBloc.indexSelected].name, category: _categoryBloc.list_cat_1[_categoryBloc.indexSelected]),
                                )
                            )
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 10,
                            ),
                            color: Color(0xffEBECE9),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  _categoryBloc
                                      .list_cat_1[_categoryBloc.indexSelected]
                                      .name,
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
                        ),
                        Expanded(
                          child: Container(
                            color:
                            listBgColors[_categoryBloc.indexSelected % 3]
                                .withOpacity(0.7),
                            padding: EdgeInsets.all(5),
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                return Category2Dropdown(
                                  data: _categoryBloc.sub_cat[index], onTap:(){
                                  Navigator.push(context,MaterialPageRoute(
                                      builder: (context)=> BlocProvider<ProductBloc>(
                                          create: (context){
                                            return ProductBloc(

                                            )..add(ProductByCategoryCodeEvent(categoryPath: _categoryBloc.sub_cat[index].categoryPath));
                                          },
                                          child:  ProductWithSubCat_Screen(title: _categoryBloc.sub_cat[index].name, category: _categoryBloc.sub_cat[index]),
                                      )
                                  )
                                  );
                                },);
                              },
                              itemCount: _categoryBloc.sub_cat.length,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              if (state is LoadingCategory)
                Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.greenAccent,
                  ),
                ),
            ]);
          }),
    );
  }
}
