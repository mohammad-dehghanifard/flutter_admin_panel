import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/core/resources/assets_path.dart';
import 'package:flutter_admin_panel/core/resources/constants.dart';
import 'package:flutter_admin_panel/modules/main/widgets/drawer_item.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
            Expanded(
                child: DrawerWidget()
            ),
            // main card
            Expanded(
              flex: 5,
                child: Container(
                  color: Colors.red,
                )
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.colorScheme.secondary,
      height: double.infinity,
      margin: const EdgeInsets.all(defaultPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // logo
            const FlutterLogo(size: 64,),
            DrawerItem(
              onTap: () {},
              title: "لیست محصولات",
              svgPath: Assets.productListIcon,
            ),
          ],
        ),
      ),
    );
  }
}

