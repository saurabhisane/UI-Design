import 'package:flutter/material.dart';
import 'package:shipshop/Widgets/container_button_modal.dart';
import 'package:shipshop/screens/cart_screen.dart';

class ProductDetailsPopup extends StatelessWidget {
  ProductDetailsPopup({super.key});

  final iStyle = const TextStyle(
    fontSize: 23,
    fontWeight: FontWeight.bold,
    color: Colors.black87,
  );

  List<Color> clrs = [
    Colors.red,
    Colors.green,
    Colors.indigo,
    Colors.amber,
  ];
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: (context),
          builder: (context) => Container(
            height: MediaQuery.of(context).size.height / 2.5,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Size:",
                              style: iStyle,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Color:",
                              style: iStyle,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Total:",
                              style: iStyle,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "S",
                                  style: iStyle,
                                ),
                                SizedBox(
                                  width: 29,
                                ),
                                Text(
                                  "M",
                                  style: iStyle,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  "L",
                                  style: iStyle,
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Text(
                                  "XL",
                                  style: iStyle,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  for (var i = 0; i < 4; i++)
                                    Container(
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 6,
                                      ),
                                      height: 28,
                                      width: 28,
                                      decoration: BoxDecoration(
                                        color: clrs[i],
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "-",
                                  style: iStyle,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  "1",
                                  style: iStyle,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  "+",
                                  style: iStyle,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                      children: [
                        Text("Total Payment",style: iStyle,),
                        const Text("\$40.00",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFDB3022),
                          fontSize: 25,
                        ),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                              return  CartScreen();
                        },),);
                      },
                      child:ContainerButtonModal(
                        containerWidth: MediaQuery.of(context).size.width,
                        itext: "CheckOut",
                        bgColor: const Color(0xFFDB3022),
                      ) ,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      child: ContainerButtonModal(
        containerWidth: MediaQuery.of(context).size.width / 1.5,
        itext: "Buy Now",
        bgColor: const Color(0xFFDB3022),
      ),
    );
  }
}
