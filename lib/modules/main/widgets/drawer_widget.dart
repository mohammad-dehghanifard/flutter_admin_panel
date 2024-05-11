import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/core/resources/assets_path.dart';
import 'package:flutter_admin_panel/core/resources/constants.dart';
import 'package:get/get.dart';

import 'drawer_item.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<DrawerItem> items = [
      DrawerItem(
        onTap: () {},
        title: "لیست محصولات",
        svgPath: Assets.productListIcon,
      ),
      DrawerItem(
        onTap: () {},
        title: "لیست سفارشات",
        svgPath: Assets.orderIcon,
      ),
      DrawerItem(
        onTap: () {},
        title: "دسته بندی ها",
        svgPath: Assets.productListIcon,
      ),
      DrawerItem(
        onTap: () {},
        title: "کد های تخفیف",
        svgPath: Assets.productListIcon,
      ),
      DrawerItem(
        onTap: () {},
        title: "لیست کاربران",
        svgPath: Assets.productListIcon,
      ),
      DrawerItem(
        onTap: () {},
        title: "امور مالی",
        svgPath: Assets.productListIcon,
      ),
      DrawerItem(
        onTap: () {},
        title: "نظرات",
        svgPath: Assets.productListIcon,
      ),
      DrawerItem(
        onTap: () {},
        title: "اسلایدر ها",
        svgPath: Assets.productListIcon,
      ),
      DrawerItem(
        onTap: () {},
        title: "تنظیمات",
        svgPath: Assets.productListIcon,
      ),
    ];
    return Container(
      decoration: BoxDecoration(
        color: context.theme.colorScheme.secondary,
        borderRadius: BorderRadius.circular(defaultRadius)
      ),
      height: double.infinity,
      margin: const EdgeInsets.all(defaultPadding),
      padding: const EdgeInsets.all(defaultPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // logo
            const FlutterLogo(
              size: 64,
            ),
            Column(
              children: List.generate(
                  items.length,
                  (index) => DrawerItem(
                      title: items[index].title,
                      svgPath: items[index].svgPath,
                      onTap: items[index].onTap)),
            )
          ],
        ),
      ),
    );
  }
}
