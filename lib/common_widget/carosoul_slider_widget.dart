import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:i_hope_practise/screens/home_screen/widget/utils/color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselSliderWidget extends StatelessWidget {
  const CarouselSliderWidget({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    int activeIndex=0;
    final controller=PageController();
    return
      Column(
      children: [
        CarouselSlider(

          options: CarouselOptions(

              height: 126.0,autoPlay: true),
          items: [1, 2, 3, 4, 5].map((i) {

            return Builder(
              builder: (BuildContext context) {
                activeIndex=i;
                return Container(

                    width: 326,
                    // height: 500,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 5.0,
                    ),
                    decoration: BoxDecoration(color: Utils.primaryColor,
                        borderRadius: BorderRadius.circular(15)

                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8,right: 5),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/person.png",height: 38,width: 64,),
                          const SizedBox(height: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7)
                                ),

                                child: Text("12:30 PM",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),),
                                // decoration: BoxDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),

                                margin: EdgeInsets.all(10),
                                padding: EdgeInsets.all(5),
                                width:80,
                                height: 30,

                              ),

                              Text("Jhon Carter",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.white),),


                              SizedBox(height: 2,),
                              Text("Doctors: Katherine Moss",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Color.fromRGBO(255, 255, 255, 1))
                              ),
                            ],
                          ),
                          Image.asset("assets/images/ihopeImage2.png",height: 38,width: 64,),





                        ],
                      ),
                    ));


              },
            );
          }).toList(),
        ),
        // AnimatedSmoothIndicator(
        //   activeIndex: activeIndex,
        //   count: 6,
        //   effect: WormEffect(),
        // )
      ],
    );
  }
}
