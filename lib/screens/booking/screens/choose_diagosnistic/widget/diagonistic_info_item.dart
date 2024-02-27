import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:i_hope_practise/common_widget/text_style.dart';

class DiagonisticInfoItem extends StatelessWidget {
  const DiagonisticInfoItem(
      {super.key,
      required this.hospitalName,
      required this.hospitalLocation,
      required this.hospitalphn,
      required this.hospitalsavingsParcentage,
      required this.hospitaltotalPrice, required this.distance});
  final String distance;

  final String hospitalName;
  final String hospitalLocation;
  final String hospitalphn;
  final String hospitalsavingsParcentage;
  final String hospitaltotalPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(width: 2, color: Colors.black12))),
      // borderRadius: BorderRadius.circular(15),),
      // padding: EdgeInsets.only(top: 10),

      margin: const EdgeInsets.only(
        top: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/images/circleImage.png"),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        hospitalName.toString(),
                        style: TextStyleUtils.subtitleTextStyle(),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            // SizedBox()
                            const Text("4.8"),
                            const SizedBox(
                              width: 5,
                            ),
                            RatingBarIndicator(
                              rating: 2.75,
                              itemBuilder: (context, index) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              itemCount: 1,
                              itemSize: 24.0,
                              direction: Axis.horizontal,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    hospitalLocation,
                    style: const TextStyle(
                        fontSize: 15, color: Color.fromRGBO(128, 141, 158, 1)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/location.png".toString(),
                        height: 18,
                        width: 18,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(distance,
                          style: const TextStyle(
                              fontSize: 15,
                              color: Color.fromRGBO(128, 141, 158, 1))),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/call.png",
                        height: 18,
                        width: 18,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                          hospitalphn,
                          style: const TextStyle(
                              fontSize: 15,
                              color: Color.fromRGBO(128, 141, 158, 1))),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/testTube.png",
                        height: 18,
                        width: 18,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        "assets/images/icon.png",
                        height: 18,
                        width: 18,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "${hospitalsavingsParcentage} Savings",
                          style: const TextStyle(color: Colors.green, fontSize: 17),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          hospitaltotalPrice,
                          style: const TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
