import 'package:flutter/material.dart';
import 'package:meal_app/category_item.dart';
import './dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  //const CategoriesScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DeliMeal"),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: <Widget>[
          ...DUMMY_CATEGORIES.map(
            (category) => CategoryItem(
              category.id,
              category.title,
              category.color,
            ),
          ),
        ],
      ),
    );
  }
}
