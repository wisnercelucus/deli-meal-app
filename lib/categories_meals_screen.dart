import 'package:flutter/material.dart';

class CategoriesMealsScreen extends StatelessWidget {
  //final String categoryId;
  //final String categoryTitle;

  //CategoriesMealsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: Text("Meals"),
      ),
    );
  }
}
