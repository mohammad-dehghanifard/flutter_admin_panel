import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/core/fake_data.dart';
import 'package:flutter_admin_panel/core/resources/constants.dart';
import 'package:flutter_admin_panel/modules/main/data/models/order_model.dart';
import 'package:get/get.dart';

class OrderListWidget extends StatelessWidget {
  const OrderListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height * 0.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          color: context.theme.colorScheme.secondary
      ),
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column (
          children: [
            Text("آخرین سفارشات",style: context.textTheme.titleMedium!.apply(color: primaryColor)),
            const SizedBox(height: 8),
            Expanded(
                child: ListView.builder(
                  itemCount: FakeData.orders.length,
                  itemBuilder: (context, index) {
                    final OrderModel order = FakeData.orders[index];
                    return Container(
                      padding: const EdgeInsets.all(defaultPadding),
                      margin: const EdgeInsets.all(6),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(defaultRadius),
                          border: Border.all(color: Colors.blueGrey.withOpacity(0.20))
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("شماره سفارش : ${order.orderCode}"),
                          const SizedBox(height: 8),
                          // product list
                          Wrap(
                            children: List.generate(order.products.length, (index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 8),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(4),
                                    child: Image.asset(order.products[index].image,height: 32,)),
                              );
                            }),
                          ),
                          const SizedBox(height: 8),
                          // total price
                          Text("مبلغ کل سفارش : ${order.totalPrice}"),
                        ],
                      ),
                    );
                  },)
            )
          ],
        ),
      ),
    );
  }
}