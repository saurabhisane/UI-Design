import 'package:flutter/material.dart';
import 'package:shipshop/Widgets/container_button_modal.dart';
import 'package:shipshop/screens/order_confirm_screen.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add Shipping Address",
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Full Name",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Mobile Number ",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Address",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "City",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "State/Province/Religon",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Zip Code ( Postal code )",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Country",
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const OrderConfirmScreen();
                        },
                      ),
                    );
                  },
                  child: ContainerButtonModal(
                    itext: "Add Address",
                    containerWidth: MediaQuery.of(context).size.width,
                    bgColor: const Color(0xFFDB3022),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
