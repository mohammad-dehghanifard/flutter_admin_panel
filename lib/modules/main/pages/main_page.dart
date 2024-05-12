import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/core/resources/constants.dart';
import 'package:flutter_admin_panel/modules/main/widgets/add_category_header_widget.dart';
import 'package:flutter_admin_panel/modules/main/widgets/drawer_widget.dart';
import 'package:flutter_admin_panel/modules/main/widgets/main_page_category_list_widget.dart';
import 'package:flutter_admin_panel/modules/main/widgets/main_page_header_widget.dart';
import 'package:flutter_admin_panel/modules/main/widgets/main_product_list_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            // DashBoard
            const Expanded(child: DrawerWidget()),
            // new product and new order cards
            Expanded(
              flex: 5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding * 2),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        // Header
                        const MainPageHeader(),
                        const SizedBox(height: defaultPadding * 2),
                        Row(
                          children: [
                            // new orders
                            Expanded(
                                flex: 2,
                                child: Container(
                                  height: 570.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(defaultRadius),
                                      color: context.theme.colorScheme.secondary
                                  ),
                                )),
                            const SizedBox(width: defaultPadding),
                            // new products and category
                            Expanded(
                                flex: 5,
                                child: SizedBox(
                                  child: SizedBox(
                                    height: 570.h,
                                    child:  const Column(
                                       crossAxisAlignment: CrossAxisAlignment.center,
                                       children: [
                                         // add new category
                                         AddCategoryHeaderWidget(),
                                         // category list
                                         MainPageCategoryListWidget(),
                                         SizedBox(height: defaultPadding * 2),
                                        // new product list
                                        MainProductListWidget()
                                       ],
                                    ),
                                  ),
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}











