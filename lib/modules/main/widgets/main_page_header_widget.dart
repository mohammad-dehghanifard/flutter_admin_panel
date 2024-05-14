import 'package:flutter/cupertino.dart';
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
    final size = MediaQuery.sizeOf(context);
    return Row(
      children: [
        // title
        Text("پنل مدیریت فروشگاه",style: context.textTheme.titleMedium),
        const Spacer(),
        // textField
        const Expanded(
          child: AppTextField(hint: "نام محصول مورد نظر را وارد کنید..."),
        ),
        SizedBox(width: size.width * 0.02),
        // Admin card
        Container(
          width: size.width * 0.12,
          height: size.height * 0.06,
          padding: const EdgeInsets.symmetric(horizontal: 2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultRadius),
              color: context.theme.colorScheme.secondary
          ),
          child:   Row(
            children: [
              Container(
                width: size.width * 0.04,
                height: size.height * 0.04,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: primaryColor
                ),
              ),
              const Text("محمد دهقانی فرد",maxLines: 1,overflow: TextOverflow.ellipsis)
            ],
          ),
        )
      ],
    );
  }
}