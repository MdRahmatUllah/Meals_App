import 'package:flutter/material.dart';
import 'package:mealsapp/models/category.dart';

import 'category_item_screen.dart';

class CategoryItemCard extends StatelessWidget {
  Category category;
  CategoryItemCard({
    Key? key,
    required this.category,
  }) : super(key: key);

  void _selectedCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(CategoryItems.routeName, arguments: category);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectedCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(.5),
              category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
