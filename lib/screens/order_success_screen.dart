import 'package:flutter/material.dart';
import 'package:shipshop/Widgets/container_button_modal.dart';
import 'package:shipshop/screens/navigation_screen.dart';

class OrderSuccessScreen extends StatelessWidget{
  const OrderSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset("asset/images/payment.png",height: 250,),
                SizedBox(height: 20,),
                const Text("Success!",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),),
                const Text("Your order will be delivered soon.",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 18
                ),),
                const Text("Thank You! for choosing our app.",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 18
                ),),
              ],
            ),
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return  const NavigationScreen();
                  },),);
                },
                child: ContainerButtonModal(itext: "Continue Shopping",
                containerWidth: MediaQuery.of(context).size.width,
                bgColor:const Color(0xFFDB3022),),
              ),
            )
          ],
        ),
      ),
    );
  }
}