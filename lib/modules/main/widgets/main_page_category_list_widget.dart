import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/core/fake_data.dart';
import 'package:flutter_admin_panel/core/resources/constants.dart';
import 'package:flutter_admin_panel/core/resources/responsive.dart';
import 'package:flutter_admin_panel/modules/main/data/models/category_model.dart';
import 'package:get/get_utils/get_utils.dart';

class MainPageCategoryListWidget extends StatelessWidget {
  const MainPageCategoryListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return GridView.builder(
      shrinkWrap: true,
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: Responsive.isDesktop(context)? 4 : 2,
          childAspectRatio: Responsive.isDesktop(context)? 1.1 : 1.8
        ),
        itemCount: FakeData.categories.take(4).length,
        itemBuilder: (context, index) {
          final CategoryModel category = FakeData.categories[index];
          return Container(
            margin: const EdgeInsets.only(top: 18,left: 12),
            padding: const EdgeInsets.all(defaultPadding),
            width: size.width * 0.13,
            decoration: BoxDecoration(
                color: context.theme.colorScheme.secondary,
                borderRadius: BorderRadius.circular(defaultRadius)
            ),
            child: Column(
              children: [
                // category image
                Image.asset(category.image,height: 68),
                SizedBox(height: size.height * 0.02),
                // category title
                Text(category.title,maxLines: 1,overflow: TextOverflow.ellipsis),
                SizedBox(height: size.height * 0.01),
                // product count
                RichText(
                  text: TextSpan(
                      text: "تعداد محصولات :  ",style: context.textTheme.bodySmall,
                      children: [
                        TextSpan(text: category.productCount.toString(),style: context.textTheme.bodyMedium!.apply(color: primaryColor ))
                      ]
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          );
        },
    );
  }
}

