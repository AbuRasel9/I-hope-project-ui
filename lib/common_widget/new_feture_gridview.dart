import 'package:flutter/material.dart';
import 'package:i_hope_practise/screens/home_screen/widget/utils/color.dart';
import 'package:i_hope_practise/screens/home_screen/widget/utils/text_style.dart';

class NewFetureGridView extends StatefulWidget {
  // final List<Map<String,dynamic>> listItem;
  const NewFetureGridView({
    super.key,
    // required this.listItem,
  });

  @override
  State<NewFetureGridView> createState() => _NewFetureGridViewState();
}

class _NewFetureGridViewState extends State<NewFetureGridView> {
  @override
  Widget build(BuildContext context) {
    return Card(

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          // shrinkWrap:false,
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: .5,
                crossAxisSpacing: 0,
                mainAxisSpacing: 0),
            itemBuilder: (context, index) {
              return  ;
            }),
      ),
    );
  }
}

class NewFetureCard extends StatelessWidget {
  const NewFetureCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(

      // margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 8,
            ),
            Icon(Icons.cable),
            // Image.asset(""),
            SizedBox(
              height: 8,
            ),
            Text("Doctor",style: TextStyle(color: Color.fromRGBO(17, 95, 110, 1),fontSize: 18),),
            SizedBox(
              height: 5,
            ),
            Text("Lorem Ipsum is simply \n& dummy text of the...")
          ],
        ),
      ),
    );
  }
}
