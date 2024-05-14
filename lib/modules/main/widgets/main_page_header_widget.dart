import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/core/resources/constants.dart';
import 'package:flutter_admin_panel/core/widgets/app_text_fields.dart';
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
        const SizedBox(width: 4),
        // Admin card
        Container(
          width: 65,
          height: 45,
          padding: EdgeInsets.symmetric(horizontal: 2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultRadius),
              color: context.theme.colorScheme.secondary
          ),
          child:  const Row(
            children: [
              CircleAvatar(),
              SizedBox(width: 2),
              Text("محمد دهقانی فرد",maxLines: 1,overflow: TextOverflow.ellipsis)
            ],
          ),
        )
      ],
    );
  }
}