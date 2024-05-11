import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/core/widgets/app_button_widget.dart';

class AddCategoryHeaderWidget extends StatelessWidget {
  const AddCategoryHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("دسته بندی ها"),
        const Spacer(),
        AppButtonWidget(
          onTap: () {},
          title: "اضافه کردن دسته بندی جدید",
        )
      ],
    );
  }
}