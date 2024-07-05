import 'package:flutter/material.dart';

import '../product_screen.dart';
// import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List tabs = ["All", "Category", "Top", "Recommended"];

  List imageList = [
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

  List review = [
    "54",
    "120",
    "542",
    "534",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    height: 50,
                    width: MediaQuery.of(context).size.width / 1.5,
                    decoration: BoxDecoration(
                      color: Colors.black12.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(10),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.black12,
                      //     blurRadius: 2,
                      //     spreadRadius: 1,
                      //   ),
                      // ],
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xFFDB3022),
                          ),
                          border: InputBorder.none,
                          label: Text(
                            "Find your product",
                            style: TextStyle(
                                // color: Color(0xFFDB3022),
                                ),
                          )),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 6,
                    decoration: BoxDecoration(
                      color: Colors.black12.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(10),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.black12,
                      //     blurRadius: 2,
                      //     spreadRadius: 1,
                      //   ),
                      // ],
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.notifications,
                        color: Color(0xFFFF3022),
                      ),
                    ),
                  ),
                ],
              ), //Navbar
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF0DD),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset("asset/images/freed.png"),
              ), //Main banner free delevery
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  itemCount: tabs.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return FittedBox(
                      child: Container(
                        height: 40,
                        margin: const EdgeInsets.all(8),
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black12.withOpacity(0.05),
                        ),
                        child: Center(
                          child: FittedBox(
                            child: Text(
                              tabs[index],
                              style: const TextStyle(
                                color: Colors.black38,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ), //Tabs of categories
              const SizedBox(
                height: 20,
              ),
              Container(
                // color: Colors.red,
                height: 200,
                child: ListView.builder(
                  itemCount: imageList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 330,
                      // color: Colors.red,
                      margin: const EdgeInsets.only(right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 200,
                            width: 200,
                            child: Stack(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return  ProductScreen();
                                        },
                                      ),
                                    );
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      imageList[index],
                                      fit: BoxFit.cover,
                                      height: 200,
                                      width: 200,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 10,
                                  top: 10,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: const Icon(
                                      Icons.favorite,
                                      color: Color(0xFFFF3022),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  productTitles[index],
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                               const SizedBox(
                                  height: 10,
                                ),
                                const SizedBox(
                                  width: 120,
                                  child: Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                    maxLines: 6,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 22,
                                    ),
                                    Text(
                                      " (${review[index]}) ",
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      prices[index],
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFDB3022),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "New Products",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color(0xFFDB3022),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GridView.builder(
                itemCount: productTitles.length,
                // scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.65,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    width: 200,
                    // margin: const EdgeInsets.only(right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 200,
                          child: Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return  ProductScreen();
                                      },
                                    ),
                                  );
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    imageList[index],
                                    width: 180,
                                    fit: BoxFit.cover,
                                    height: 200,
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 10,
                                top: 10,
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Icon(
                                    Icons.favorite,
                                    color: Color(0xFFFF3022),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          productTitles[index],
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 22,
                            ),
                            Text(
                              " (${review[index]}) ",
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              prices[index],
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFDB3022),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
