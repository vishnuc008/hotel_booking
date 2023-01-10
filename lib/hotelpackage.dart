import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class htp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            detail(
                img1: "assets/images/merriot.jpg",
                txt1: "Crown Plazza",
                txt2: "A Five Star Hotel in Kochi",
                txt3: "\$180/night",
                ic1: FontAwesomeIcons.car,
                ic2: FontAwesomeIcons.bowlFood,
                ic3: FontAwesomeIcons.wineGlass,
                ic4: FontAwesomeIcons.wifi),
            detail(
                img1: "assets/images/4.webp",
                txt1: "Bamboo Dale",
                txt2: "A Five Star Hotel in Kochi",
                txt3: "\$180/night",
                ic1: FontAwesomeIcons.car,
                ic2: FontAwesomeIcons.bowlFood,
                ic3: FontAwesomeIcons.wineGlass,
                ic4: FontAwesomeIcons.wifi
              
                
                ),
                detail(
                img1: "assets/images/3.jpg",
                txt1: "Raja Park",
                txt2: "A Five Star Hotel in Kochi",
                txt3: "\$180/night",
                ic1: FontAwesomeIcons.car,
                ic2: FontAwesomeIcons.bowlFood,
                ic3: FontAwesomeIcons.wineGlass,
                ic4: FontAwesomeIcons.wifi),
                detail(
                img1: "assets/images/5.jpg",
                txt1: "Black Beach Resort",
                txt2: "A Five Star Hotel in Kochi",
                txt3: "\$180/night",
                ic1: FontAwesomeIcons.car,
                ic2: FontAwesomeIcons.bowlFood,
                ic3: FontAwesomeIcons.wineGlass,
                ic4: FontAwesomeIcons.wifi),

          ],
        ),
      ),
    );
  }
}

class detail extends StatelessWidget {
  final String img1;
  final String txt1;
  final String txt2;
  final String txt3;
  final IconData ic1;
  final IconData ic2;
  final IconData ic3;
  final IconData ic4;
  detail({
    required this.img1,
    required this.txt1,
    required this.txt2,
    required this.txt3,
    required this.ic1,
    required this.ic2,
    required this.ic3,
    required this.ic4,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Stack(
        children:[ Container(
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 8,
              offset: Offset(1, 4),
            )
          ]),
          width: double.infinity,
          height: 100,
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 150,
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(img1), fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 8)
                        ]),
                  ),
                ],
              ),
              SizedBox(width: 60),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 10),
                      child: Text(
                        txt1,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 10),
                      child: Text(
                        txt2,
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 10),
                      child: Text(
                        txt3,
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(ic1, color: Colors.blue),
                          SizedBox(width: 20),
                          Icon(
                            ic2,
                            color: Colors.blue,
                          ),
                          SizedBox(width: 20),
                          Icon(
                            ic3,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            ic4,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 60,
          right: 0,
          child: ElevatedButton(style: ElevatedButton.styleFrom
          (backgroundColor: Colors.blue,shape:RoundedRectangleBorder
          (borderRadius: BorderRadius.only(topLeft:Radius.circular(10),
          bottomLeft: Radius.circular(10))) ),
           onPressed: (){}, child: Text("BOOKING",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white),)))
      ]
    
      ),
    );
  }
}
