import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/core/fake_data.dart';
import 'package:flutter_admin_panel/core/resources/constants.dart';
import 'package:flutter_admin_panel/core/widgets/app_button_widget.dart';
import 'package:flutter_admin_panel/modules/main/data/models/product_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/get_utils.dart';

class MainProductListWidget extends StatelessWidget {
  const MainProductListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(
      height: double.infinity,
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          color: context.theme.colorScheme.secondary
      ),
      child:  Column(
        children: [
          // header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("جدیدترین محصولات"),

              AppButtonWidget(
                width: 8.w,
                onTap: () {},
                title: "افزودن محصول جدید",
              )
            ],
          ),
          SizedBox(height: 12.h),
          Expanded(
              child: ListView.builder(
                itemCount: FakeData.products.length,
                itemBuilder: (context, index) {
                  final ProductModel product = FakeData.products[index];
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: defaultPadding, vertical: 4.h),
                    padding: const EdgeInsets.all(6),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.blueGrey.withOpacity(0.30)
                        ),
                        borderRadius: BorderRadius.circular(8.r)
                    ),
                    child: Table(
                      columnWidths: const {
                        1 :  FixedColumnWidth(250.0),
                        2 :  FixedColumnWidth(200.0),
                      },
                      children: [
                        const TableRow(
                          children: [
                            Text('تصویر'),
                            Text('نام محصول'),
                            Text('توضیحات کوتاه'),
                            Text('دسته بندی'),
                            Text('تعداد'),
                            Text('قیمت'),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableCell(
                              verticalAlignment: TableCellVerticalAlignment.middle,
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(4.r),
                                      child: Image.asset(product.image,height: 40,))),
                            ),
                            TableCell(
                              verticalAlignment: TableCellVerticalAlignment.middle,
                              child: Text(product.title),
                            ),
                            TableCell(
                              verticalAlignment: TableCellVerticalAlignment.middle,
                              child: Text(product.shortDescription),
                            ),
                            TableCell(
                              verticalAlignment: TableCellVerticalAlignment.middle,
                              child: Text(product.category.title),
                            ),
                            TableCell(
                              verticalAlignment: TableCellVerticalAlignment.middle,
                              child: Text(product.count.toString()),
                            ),
                            TableCell(
                              verticalAlignment: TableCellVerticalAlignment.middle,
                              child: Text(product.price.toString()),
                            ),
                          ],
                        ),

                      ],
                    ),
                  );
                },
              )

          )
        ],
      ),
    ));
  }
}

