import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/core/resources/constants.dart';
import 'package:flutter_admin_panel/core/widgets/app_button_widget.dart';
import 'package:flutter_admin_panel/modules/main/widgets/drawer_widget.dart';
import 'package:flutter_admin_panel/modules/main/widgets/main_page_header_widget.dart';
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
            // main card
            Expanded(
              flex: 5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding * 2),
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
                                color: context.theme.colorScheme.secondary,
                              )),
                          const SizedBox(width: defaultPadding),
                          // new products
                          Expanded(
                              flex: 5,
                              child: SizedBox(
                                child: SizedBox(
                                  height: 570.h,
                                  child:  Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Row(
                                         children: [
                                           const Text("دسته بندی ها"),
                                           const Spacer(),
                                           AppButtonWidget(
                                             onTap: () {},
                                             title: "اضافه کردن دسته بندی جدید",
                                           )
                                         ],
                                       )

                                     ],
                                  ),
                                ),
                              )),
                        ],
                      )
                    ],
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}









