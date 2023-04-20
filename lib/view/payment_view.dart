import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:home_decor_sample/common/custom_elevatedbutton.dart';
import 'package:home_decor_sample/common/custom_radio_listtile.dart';
import 'package:home_decor_sample/controller/order_controller.dart';

import '../constants/app_constants.dart';
import '../constants/assets.dart';

class PaymentView extends StatefulWidget {
  const PaymentView({super.key});

  @override
  State<PaymentView> createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {
  String? selected;
  @override
  Widget build(BuildContext context) {
    final OrderController controller = Get.put(OrderController());
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            ' Select a payment method',
            style: AppConstants.kBodySmallBold,
          ),
          const SizedBox(height: 20),
          CustomRadioListTile(
            title: 'Phone Pay',
            image: Assets.ppay,
            value: "p_pay",
            groupValue: selected,
            onChanged: (value) {
              setState(() {
                selected = value;
              });
            },
          ),
          CustomRadioListTile(
            title: 'Google Pay',
            image: Assets.gpay,
            value: "gpay",
            groupValue: selected,
            onChanged: (value) {
              setState(() {
                selected = value;
              });
            },
          ),
          CustomRadioListTile(
            title: 'Paytm',
            image: Assets.paytm,
            value: "paytm",
            groupValue: selected,
            onChanged: (value) {
              setState(() {
                selected = value;
              });
            },
          ),
        ],
      ),
      bottomNavigationBar: CustomElevatedButton(
        onPressed: () {
          selected == null
              ? Fluttertoast.showToast(
                  backgroundColor: Colors.white,
                  msg: 'Select payment mode',
                  gravity: ToastGravity.CENTER,
                  textColor: Colors.black,
                )
              : controller.selectedIndex.value = 3;
        },
        text: 'Continue',
      ),
    );
  }
}
