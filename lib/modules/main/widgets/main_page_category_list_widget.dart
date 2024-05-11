import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/core/resources/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/get_utils.dart';

class MainPageCategoryListWidget extends StatelessWidget {
  const MainPageCategoryListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(4, (index) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(top: 18.h,left: 4.w),
            width: 45.w,
            height: 160.h,
            decoration: BoxDecoration(
                color: context.theme.colorScheme.secondary,
                borderRadius: BorderRadius.circular(defaultRadius)
            ),
          ),
        ],
      )),
    );
  }
}

