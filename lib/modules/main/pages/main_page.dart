import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/core/resources/constants.dart';
import 'package:flutter_admin_panel/core/resources/responsive.dart';
import 'package:flutter_admin_panel/modules/main/widgets/add_category_header_widget.dart';
import 'package:flutter_admin_panel/modules/main/widgets/drawer_widget.dart';
import 'package:flutter_admin_panel/modules/main/widgets/main_order_list_widget.dart';
import 'package:flutter_admin_panel/modules/main/widgets/main_page_category_list_widget.dart';
import 'package:flutter_admin_panel/modules/main/widgets/main_page_header_widget.dart';
import 'package:flutter_admin_panel/modules/main/widgets/main_product_list_widget.dart';


class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return   Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            // DashBoard
            if(Responsive.isDesktop(context))
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
                            if(Responsive.isDesktop(context))
                            const Expanded(
                                flex: 2,
                                child: OrderListWidget()),
                            const SizedBox(width: defaultPadding),
                            // new products and category
                             Expanded(
                                flex: 5,
                                child: SizedBox(
                                  child: SizedBox(
                                    height: size.height * 0.8,
                                    child:  const Column(
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













