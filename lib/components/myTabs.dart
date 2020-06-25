import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travellingApp/utilities/themeColors.dart';

import '../services/app_state.dart';
import '../models/category.dart';

class CategoryWidget extends StatelessWidget {
  final Category category;

  const CategoryWidget({Key key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    final isSelected = appState.selectedCategory == category.categoryId;

    return GestureDetector(
      onTap: () {
        if (!isSelected) {
          appState.updateCategory(category.categoryId);
        }
      },
      child: Container(
        width: 110,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            color: isSelected ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(18.0)),
        child: Center(
          child: Text(
            category.name,
            style: isSelected
                ? TextStyle(color: ThemeColors.green)
                : TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
