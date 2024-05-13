import 'package:flutter_admin_panel/modules/main/data/models/product_model.dart';

class OrderModel {

  final List<ProductModel> products;
  final double totalPrice;
  final int orderCode;

  OrderModel({required this.products,required this.totalPrice,required this.orderCode});
}