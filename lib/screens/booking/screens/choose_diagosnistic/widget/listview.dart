import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:i_hope_practise/common_widget/text_style.dart';

class ListViewWidget extends StatefulWidget {

  final List<Map<String, String>> listItem;

  const ListViewWidget({
    super.key,
    required this.listItem,
  });

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: widget.listItem.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 2, color: Colors.black12))),
            // borderRadius: BorderRadius.circular(15),),
            // padding: EdgeInsets.only(top: 10),

            margin: EdgeInsets.only(
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
                              widget.listItem[index]["coName"].toString(),
                              style: subtitleTextStyle(),

                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  // SizedBox()
                                  Text("4.8"),
                                  SizedBox(width: 5,),
                                  RatingBarIndicator(
                                    rating: 2.75,
                                    itemBuilder: (context, index) => Icon(
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
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.listItem[index]["coLocation"].toString(),
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromRGBO(128, 141, 158, 1)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              widget.listItem[index]["image"].toString(),
                              height: 18,
                              width: 18,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(widget.listItem[index]["distance"].toString(),
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromRGBO(128, 141, 158, 1))),
                          ],
                        ),
                        SizedBox(
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
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                                widget.listItem[index]["mobileNumber"]
                                    .toString(),
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromRGBO(128, 141, 158, 1))),
                          ],
                        ),
                        SizedBox(
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
                            SizedBox(
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
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "${widget.listItem[index]["savingsParcentage"].toString()} Savings",
                                style: TextStyle(

                                  color: Colors.green,
                                  fontSize: 17
                                ),
                              ),
                              SizedBox(width: 8,),
                              Text(widget.listItem[index]["totalPrice"]
                                  .toString(), style: TextStyle(

                                  fontSize: 17
                              ),),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // ListTile(
            //   leading: Icon(Icons.circle),
            //   trailing: RatingBarIndicator(
            //     rating: 2.75,
            //     itemBuilder: (context, index) => Icon(
            //       Icons.star,
            //       color: Colors.amber,
            //     ),
            //     itemCount: 5,
            //     itemSize: 50.0,
            //     direction: Axis.vertical,
            //   ),
            //   title:
            // ),
          );
        });
  }
}
