import 'package:flutter_admin_panel/core/resources/assets_path.dart';
import 'package:flutter_admin_panel/modules/main/data/models/category_model.dart';

class FakeData {
  static List<CategoryModel> categories = [
    CategoryModel(title: "لبنیات", image: Assets.category1, productCount: 20),
    CategoryModel(title: "محصولات پروتئینی", image: Assets.category2, productCount: 12),
    CategoryModel(title: "نوشیدنی ها", image: Assets.category3, productCount: 40),
    CategoryModel(title: "تنقلات", image: Assets.category4, productCount: 53),
    CategoryModel(title: "خوار و بار", image: Assets.category5, productCount: 34),
  ];
}