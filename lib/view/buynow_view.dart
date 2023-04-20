import 'package:easy_stepper/easy_stepper.dart';
import 'package:get/get.dart';
import 'package:home_decor_sample/constants/app_constants.dart';
import 'package:home_decor_sample/controller/order_controller.dart';
import 'package:home_decor_sample/view/address_view.dart';
import 'package:home_decor_sample/view/delivery_view.dart';
import 'package:home_decor_sample/view/order_success_view.dart';
import 'package:home_decor_sample/view/payment_view.dart';

class BuyNowView extends StatefulWidget {
  const BuyNowView({super.key});

  @override
  State<BuyNowView> createState() => _BuyNowViewState();
}

class _BuyNowViewState extends State<BuyNowView> {
  int activeStep = 0;
  @override
  Widget build(BuildContext context) {
    OrderController controller = Get.put(OrderController());
    return Scaffold(
      body: Padding(
        padding: AppConstants.kDefaultPadding,
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Obx(
                  () => EasyStepper(
                    enableStepTapping: false,
                    activeStep: controller.selectedIndex.value,
                    lineLength: 50,
                    lineSpace: 5,
                    stepRadius: 20,
                    unreachedStepIconColor: Colors.black87,
                    unreachedStepBorderColor: Colors.black54,
                    unreachedStepTextColor: Colors.black,
                    showLoadingAnimation: false,
                    steps: const [
                      EasyStep(
                        icon: Icon(Icons.location_on),
                        title: 'Address',
                      ),
                      EasyStep(
                        icon: Icon(Icons.shopping_cart_outlined),
                        title: 'Delivery',
                      ),
                      EasyStep(
                        icon: Icon(Icons.credit_card),
                        title: 'Payment',
                      ),
                      EasyStep(
                        icon: Icon(Icons.done),
                        title: 'Place order',
                      ),
                    ],
                    // onStepReached: (index) => setState(
                    //   () => activeStep = index,
                    // ),
                    onStepReached: (index) => controller.setSelectedIndex(index),
                  ),
                )),
            Divider(
              thickness: 5.0,
              color: Colors.grey.shade200,
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Obx(
                () => IndexedStack(
                  index: controller.selectedIndex.value,
                  children: const [
                    AddressView(),
                    DeliveryView(),
                    PaymentView(),
                    OrderSuccessView(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
