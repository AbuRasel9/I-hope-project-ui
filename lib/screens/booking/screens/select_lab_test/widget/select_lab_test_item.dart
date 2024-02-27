import 'package:flutter/material.dart';

class SelectLabTestItem extends StatelessWidget {
  const SelectLabTestItem({
    super.key, required this.name, required this.price,
  });
  final String name;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border:Border(
              bottom: BorderSide(
                  width: 2,color: Colors.black12
              )
          )),


      margin: const EdgeInsets.only(top: 16,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name,style: const TextStyle(fontSize: 17),),
          Text(price,style: const TextStyle(fontSize: 17),),

        ],
      ),
    );

}
}