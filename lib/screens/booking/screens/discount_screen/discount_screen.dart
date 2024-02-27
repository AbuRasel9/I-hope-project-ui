import 'package:flutter/material.dart';
import 'package:i_hope_practise/common_widget/button_widget.dart';
import 'package:i_hope_practise/screens/home_screen/home_view.dart';

class DiscountScreen extends StatefulWidget {
  const DiscountScreen({super.key});

  @override
  State<DiscountScreen> createState() => _DiscountScreenState();
}

class _DiscountScreenState extends State<DiscountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 150,
            ),
            Image.asset("assets/images/discount_screen_image/circle.png"),
            const SizedBox(
              height: 15,
            ),
            RichText(
              text: const TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: 'Discount Code :',
                      style: TextStyle(color: Colors.black, fontSize: 30)),
                  TextSpan(
                      text: ' 123-3029 ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 30,
                      )),
                ],
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            const Text(
              "Your appointment has been requested ",
              style: TextStyle(fontSize: 20, color: Colors.black38),
            ),
            const Text(
              "Use the discount code at counter.",
              style: TextStyle(fontSize: 20, color: Colors.black38),
            ),
            const SizedBox(
              height: 45,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 35),
              decoration: BoxDecoration(
                  color: Colors.orangeAccent.shade100,
                  borderRadius: BorderRadius.circular(20)),
              child: const Column(
                children: [
                  Text("If you have any problem or any issue",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      )),
                  Text("and you need change your visit",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      )),
                  Text("please call 021 9012301",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ))
                ],
              ),
            ),
         const Spacer(),
            Container(
              color: const Color.fromRGBO(233, 236, 242, 1),
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 20),
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/discount_screen_image/calender.png",
                    height: 30,
                    width: 30,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 55,
                  ),
                  const Text(
                    "Add Google Calendar",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(

                width: double.infinity,
                child: ButtonWidget(
                    text: "Back to Home",
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => const HomeView()),
                          (route) => false);
                    },),)

            // Text("Discount Code : 123-3029",style: TextStyle(fontSize: 30),)
          ],
        ),
      ),
    );
  }
}
