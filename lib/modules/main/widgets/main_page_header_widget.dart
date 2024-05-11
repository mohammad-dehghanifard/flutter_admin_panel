import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/core/resources/constants.dart';
import 'package:flutter_admin_panel/core/widgets/app_text_fields.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/get_utils.dart';

class MainPageHeader extends StatelessWidget {
  const MainPageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // title
        Text("پنل مدیریت فروشگاه",style: context.textTheme.titleMedium),
        const Spacer(),
        // textField
        const Expanded(
          child: AppTextField(hint: "نام محصول مورد نظر را وارد کنید..."),
        ),
        SizedBox(width: 4.w),
        // Admin card
        Container(
          width: 65.w,
          height: 45.h,
          padding: EdgeInsets.symmetric(horizontal: 2.w),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultRadius),
              color: context.theme.colorScheme.secondary
          ),
          child:  Row(
            children: [
              const CircleAvatar(),
              SizedBox(width: 2.w),
              const Text("محمد دهقانی فرد")
            ],
          ),
        )
      ],
    );
  }
}