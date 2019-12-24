import 'package:flutter/material.dart';
import 'package:meal_app/models/category.dart';
import '../screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  void selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(CategoryMealsScreen.routeName, arguments: {
      'id': category.id,
      'title': category.title,
    });
  }

  CategoryItem(this.category);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [category.color.withOpacity(0.7), category.color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
