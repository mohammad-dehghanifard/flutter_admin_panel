import 'package:flutter_admin_panel/core/resources/assets_path.dart';
import 'package:flutter_admin_panel/modules/main/data/models/category_model.dart';
import 'package:flutter_admin_panel/modules/main/data/models/order_model.dart';
import 'package:flutter_admin_panel/modules/main/data/models/product_model.dart';

class FakeData {

  static const lorem = "لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.";

  static List<CategoryModel> categories = [
    CategoryModel(title: "لبنیات", image: Assets.category1, productCount: 20),
    CategoryModel(title: "محصولات پروتئینی", image: Assets.category2, productCount: 12),
    CategoryModel(title: "نوشیدنی ها", image: Assets.category3, productCount: 40),
    CategoryModel(title: "تنقلات", image: Assets.category4, productCount: 53),
    CategoryModel(title: "خوار و بار", image: Assets.category5, productCount: 34),
  ];

  static List<ProductModel> products = [
    ProductModel(
        title: "شکلات شیری با مغزی ویفر",
        image: Assets.product1,
        shortDescription: "شکلات شیری خارجی",
        description: lorem,
        price: 10000.0,
        count: 20,
        category: categories[3]),
    ProductModel(
        title: "بیسکویت نان روغنی 25 گرمی سالمین",
        image: Assets.product2,
        shortDescription:  "بیسکویت نان روغنی",
        description: lorem,
        price: 4000.0,
        count: 13,
        category: categories[3]),
    ProductModel(
        title:  "نوشابه گازدار آلبالو 250سی سی آیسی مانکی",
        image: Assets.product3,
        shortDescription: "نوشابه گازدار آلبالو",
        description: lorem,
        price: 29000.0,
        count: 50,
        category: categories[2]),
    ProductModel(
        title: "نوشابه انرژی زا",
        image: Assets.product4,
        shortDescription: "نوشابه گازدار",
        description: lorem,
        price: 65000.0,
        count: 41,
        category: categories[2]),
    ProductModel(
        title: "نوشابه قوطی پرتقالی 330 سی سی میراندا",
        image: Assets.product5,
        shortDescription: "نوشابه گازدار",
        description: lorem,
        price: 19900.0,
        count: 68,
        category: categories[2]),
    ProductModel(
        title: "نوشابه 1500 سی سی پپسی",
        image: Assets.product6,
        shortDescription: "نوشابه گازدار",
        description: lorem,
        price: 26000.0,
        count: 29,
        category: categories[2]),
  ];

  static List<OrderModel> orders = [
    OrderModel(
        products: [products[0],products[3],products[1],products[4]],
        totalPrice: 124000.0,
        orderCode: 123456
    ),
    OrderModel(
        products: [products[1],products[2],products[0],products[5],products[3]],
        totalPrice: 36500.0,
        orderCode: 113987
    ),
    OrderModel(
        products: [products[5],products[4]],
        totalPrice: 89000.0,
        orderCode: 741258
    ),
    OrderModel(
        products: [products[3],products[4]],
        totalPrice: 465000.0,
        orderCode: 951357
    ),
  ];
}