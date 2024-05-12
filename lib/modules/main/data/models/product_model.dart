import 'package:flutter_admin_panel/modules/main/data/models/category_model.dart';

class ProductModel {

   final String title,image,shortDescription,description;
   final double price,count;
   final CategoryModel category;

  ProductModel(
      {required this.title,
      required this.image,
      required this.shortDescription,
      required this.description,
      required this.price,
      required this.count,
      required this.category});
}