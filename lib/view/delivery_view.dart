import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_decor_sample/common/custom_elevatedbutton.dart';
import 'package:home_decor_sample/constants/app_constants.dart';
import 'package:home_decor_sample/controller/order_controller.dart';

class DeliveryView extends GetView<OrderController> {
  const DeliveryView({super.key});

  @override
  OrderController get controller => Get.put(OrderController());

  @override
  Widget build(BuildContext context) {
    String? selected;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Select a delivery address',
            style: AppConstants.kBodySmallBold,
          ),
          const SizedBox(height: 20),
          GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade300,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Mounika',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '1st Floor, Plot No. 16, Jayabheri Enclave,\nGachibowli, Hyderabad, Telangana 500032',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'Phone number : 9789787566',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomElevatedButton(
        onPressed: () {
          controller.selectedIndex.value = 2;
        },
        text: 'Deliver to this address',
      ),
    );
  }
}
