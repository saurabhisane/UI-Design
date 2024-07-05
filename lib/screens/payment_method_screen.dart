import 'package:flutter/material.dart';
import 'package:shipshop/Widgets/container_button_modal.dart';
import 'package:shipshop/screens/address_screen.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  int _type = 1;
  void _handleRadio(Object? e) => setState(() {
        _type = e as int;
      });

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Payment Method",
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
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: size.width,
                    height: 55,
                    // margin: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      border: _type == 1
                          ? Border.all(width: 1, color: const Color(0xFFDB3022))
                          : Border.all(width: 0.3, color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.transparent,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Radio(
                                  value: 1,
                                  groupValue: _type,
                                  onChanged: _handleRadio,
                                  activeColor: const Color(0xFFDB3022),
                                ),
                                Text(
                                  "Amazon Pay",
                                  style: _type == 1
                                      ? const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        )
                                      : const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFFDB3022),
                                        ),
                                ),
                              ],
                            ),
                            Image.asset(
                              "asset/images/amazon_pay.png",
                              width: 100,
                              height: 100,
                              // fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: size.width,
                    height: 55,
                    // margin: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      border: _type == 2
                          ? Border.all(width: 1, color: const Color(0xFFDB3022))
                          : Border.all(width: 0.3, color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.transparent,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Radio(
                                  value: 2,
                                  groupValue: _type,
                                  onChanged: _handleRadio,
                                  activeColor: const Color(0xFFDB3022),
                                ),
                                Text(
                                  "Credit Card",
                                  style: _type == 2
                                      ? const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        )
                                      : const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFFDB3022),
                                        ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Image.asset(
                              "asset/images/visa.png",
                              width: 50,
                              height: 50,
                              // fit: BoxFit.cover,
                            ),
                            Image.asset(
                              "asset/images/master.png",
                              width: 40,
                              height: 40,
                              // fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: size.width,
                    height: 55,
                    // margin: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      border: _type == 3
                          ? Border.all(width: 1, color: const Color(0xFFDB3022))
                          : Border.all(width: 0.3, color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.transparent,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Radio(
                                  value: 3,
                                  groupValue: _type,
                                  onChanged: _handleRadio,
                                  activeColor: const Color(0xFFDB3022),
                                ),
                                Text(
                                  "Google Pay",
                                  style: _type == 3
                                      ? const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        )
                                      : const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFFDB3022),
                                        ),
                                ),
                              ],
                            ),
                            // Spacer(),
                            Image.asset(
                              "asset/images/icon2.png",
                              width: 65,
                              height: 65,
                              // fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: size.width,
                    height: 55,
                    // margin: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      border: _type == 4
                          ? Border.all(width: 1, color: const Color(0xFFDB3022))
                          : Border.all(width: 0.3, color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.transparent,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Radio(
                                  value: 4,
                                  groupValue: _type,
                                  onChanged: _handleRadio,
                                  activeColor: const Color(0xFFDB3022),
                                ),
                                Text(
                                  "PayPal",
                                  style: _type == 4
                                      ? const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        )
                                      : const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFFDB3022),
                                        ),
                                ),
                              ],
                            ),
                            // Spacer(),
                            Image.asset(
                              "asset/images/paypal.png",
                              width: 90,
                              height: 90,
                              // fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 80,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sub-Total",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black26,
                        ),),
                      Text("\$300.00",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  const  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Shipping Fees",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black26,
                        ),),
                        Text("\$40.00",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),),
                    ],
                  ),
                 const Divider(height: 10,),
                  const  SizedBox(height: 10,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Payment",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),),
                      Text("\$340.00",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFDB3022),
                        ),),
                    ],
                  ),
                  const SizedBox(height: 80,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const AddressScreen();
                      },),);
                    },
                    child: ContainerButtonModal(
                      itext: "Confirm Payment",
                      containerWidth: size.width,
                      bgColor:const Color(0xFFDB3022),
                    ),
        
                  ),
        
                ],
              ),
            ),
          ),
        
        ),
      ),
    );
  }
}
