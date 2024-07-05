import 'package:flutter/material.dart';
import 'package:shipshop/screens/address_screen.dart';
import 'package:shipshop/screens/payment_method_screen.dart';

import '../Widgets/container_button_modal.dart';
import 'order_success_screen.dart';

class OrderConfirmScreen extends StatelessWidget {
  const OrderConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Confirm Order",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: const BackButton(
          color: Colors.black87,
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black87,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Shipping Address",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 2,
                        spreadRadius: 4,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Dear pro",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black26,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const AddressScreen();
                                    },
                                  ),
                                );
                              },
                              child: const Text(
                                "Change",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFFDB3022),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          "3 New Bridge court",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        const Text(
                          "Chino Hills,CA,97545, United States",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Payment Method",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const PaymentMethodScreen();
                            },
                          ),
                        );
                      },
                      child: const Text(
                        "Change",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFDB3022),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 2,
                            spreadRadius: 4,
                          ),
                        ],
                      ),
                      child: Image.asset("asset/images/master.png"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("**** **** **** 3974"),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Delivery Method",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 2,
                            spreadRadius: 4,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            "asset/images/icon3.png",
                            height: 25,
                          ),
                          Text("2-7 days"),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 60,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 2,
                            spreadRadius: 4,
                          ),
                        ],
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Home Delivery",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.indigo,
                            ),
                          ),
                          Text("2-7 days"),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 80,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sub-Total",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black26,
                      ),
                    ),
                    Text(
                      "\$300.00",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shipping Fees",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black26,
                      ),
                    ),
                    Text(
                      "\$40.00",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                const Divider(
                  height: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Payment",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "\$340.00",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFDB3022),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const OrderSuccessScreen();
                    },),);
                  },
                  child: ContainerButtonModal(
                    itext: "Confirm Payment",
                    containerWidth: MediaQuery.of(context).size.width,
                    bgColor: const Color(0xFFDB3022),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
