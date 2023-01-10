import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class popularr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18,top: 15),
              child: pop(
                  imagg: "assets/images/merriot.jpg",
                  text1: "Crown Plazza",
                  text2: "A Five Star Hotel in kochi",
                  text3: "\$180/night",
                  text4: "4.5",
                  ic: Icons.star),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18,top: 15),
              child: pop(
                  imagg: "assets/images/4.webp",
                  text1: " Bamboo Dale",
                  text2: "A Five Star Hotel in kochi",
                  text3: "\$180/night",
                  text4: "4.5",
                  ic: Icons.star),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15,left: 18),
              child: pop(
                  imagg: "assets/images/3.jpg",
                  text1: "Raja Park ",
                  text2: "A Five Star Hotel in kochi",
                  text3: "\$180/night",
                  text4: "4.5",
                  ic: Icons.star),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15,left: 18),
              child: pop(
                  imagg: "assets/images/5.jpg",
                  text1: "Black Beach Resort",
                  text2: "A Five Star Hotel in kochi",
                  text3: "\$180/night",
                  text4: "4.5",
                  ic: Icons.star),
            ),
          ],
        ),
      ),
    );
  }
}

class pop extends StatelessWidget {
  final String imagg;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final IconData ic;
  pop({
    required this.imagg,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.ic,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 8)]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 155,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image:
                  DecorationImage(image: AssetImage(imagg), fit: BoxFit.fill),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12, left: 5),
            child: Text(
              text1,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              text2,
              style: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                text3,
                style: TextStyle(fontSize: 15, color: Colors.blue),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  text4,
                  style: TextStyle(fontSize: 15, color: Colors.blue),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 2),
                child: Icon(
                  ic,
                  color: Colors.blue,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
