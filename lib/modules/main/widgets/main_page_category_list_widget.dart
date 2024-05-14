import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/core/fake_data.dart';
import 'package:flutter_admin_panel/core/resources/constants.dart';
import 'package:flutter_admin_panel/modules/main/data/models/category_model.dart';
import 'package:get/get_utils/get_utils.dart';

class MainPageCategoryListWidget extends StatelessWidget {
  const MainPageCategoryListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(FakeData.categories.take(4).length, (index) {
        final CategoryModel category = FakeData.categories[index];
        return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(top: 18,left: 4),
            padding: const EdgeInsets.all(defaultPadding),
            width: 45,
            height: 160,
            decoration: BoxDecoration(
                color: context.theme.colorScheme.secondary,
                borderRadius: BorderRadius.circular(defaultRadius)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // category image
                Image.asset(category.image,height: 78),
                //SizedBox(height: 8.h),
                // category title
                Text(category.title,maxLines: 1,overflow: TextOverflow.ellipsis,),
                //SizedBox(height: 8.h),
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
          ),
        ],
      );
      }),
    );
  }
}

