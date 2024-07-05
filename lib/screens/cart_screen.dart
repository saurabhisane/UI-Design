import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shipshop/Widgets/container_button_modal.dart';
import 'package:shipshop/screens/payment_method_screen.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  List<String> imagesList = [
    "asset/images/image1.jpg",
    "asset/images/image2.jpg",
    "asset/images/image3.jpg",
    "asset/images/image4.jpg",
  ];

  List productTitles = [
    "Warm Zipper",
    "Knitted Woo!",
    "Zipper Win",
    "Child Win"
  ];

  List prices = [
    "\$300",
    "\$650",
    "\$150",
    "\$100",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
        leading: const BackButton(
          color: Colors.black87,
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black87,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                // height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: imagesList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin:const EdgeInsets.symmetric(vertical: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Checkbox(
                              splashRadius: 20,
                              activeColor: const Color(0xFFDB3022),
                              value: true,
                              onChanged: (val) {}),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              imagesList[index],
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                productTitles[index],
                                style:const TextStyle(
                                  color: Colors.black87,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              const  SizedBox(
                                height: 10,
                              ),
                              const  Text(
                                "Hooded Jacket",
                                style: TextStyle(
                                  color: Colors.black26,
                                  fontSize: 18,
                                ),
                              ),
                              const  SizedBox(
                                height: 10,
                              ),
                              Text(
                                prices[index],
                                style:const TextStyle(
                                  color: Color(0xFFDB3022),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                          const  Row(
                            children: [
                              Icon(
                                CupertinoIcons.minus,
                                color: Colors.green,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                                SizedBox(
                                width: 20,
                              ),
                                Icon(
                                CupertinoIcons.plus,
                                color: Color(0xFFDB3022),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const  Text(
                    "Select All",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Checkbox(
                    splashRadius: 10,
                    activeColor:const Color(0xFFDB3022),
                    value: false,
                    onChanged: (val) {},
                  ),
                ],
              ),
              const  Divider(
                height: 10,
                thickness: 1,
                color: Colors.black,
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                   Text(
                    "Total Payment",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ), Text(
                    "\$300.50",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFDB3022),
                    ),
                  ),

                ],
              ),
              const SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const PaymentMethodScreen();
                  },),);
                },
                child: ContainerButtonModal(itext: "CheckOut",
                containerWidth: MediaQuery.of(context).size.width,
                bgColor:const Color(0xFFDB3022),
                ),
              ),
              const SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
