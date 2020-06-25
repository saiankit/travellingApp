import 'package:flutter/material.dart';

class Category {
  final int categoryId;
  final String name;

  Category({this.categoryId, this.name});
}

final train = Category(
  categoryId: 0,
  name: "TRAIN",
);

final bus = Category(
  categoryId: 1,
  name: "BUS",
);

final plane = Category(
  categoryId: 2,
  name: "PLANE",
);

final categories = [
  train,
  bus,
  plane,
];
