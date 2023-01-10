import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/hotelpackage.dart';
import 'package:hotel_booking/popular.dart';

void main(List<String> args) {
  runApp(MaterialApp(home: hotelbook(),debugShowCheckedModeBanner: false,theme: ThemeData(backgroundColor: Colors.white ),));
}
class hotelbook extends StatefulWidget{
  @override
  State<hotelbook> createState() => _hotelbookState();
}

class _hotelbookState extends State<hotelbook> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: CustomScrollView(
      slivers: [
        SliverAppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          pinned: true,
          floating: false,
          title:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Hello @rjun",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.grey),
              ),
              Text("Find Your Favourite Hotel",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
            
            ],
            
          ),
          actions: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/man-icon-icon-11553432006itw46zhhk8.png"),
            )
          ],
          bottom: AppBar(
            backgroundColor: Colors.white,
            
            elevation: 0,
            title: Padding(padding: EdgeInsets.all(20),
            child: Container(
              
              
              width: double.infinity,
              height: 40,
              child: 
              Center(
                
                
                child: TextField(
                  
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search,color: Colors.black45,),
                    hintText: "Search for Hotel",
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50),borderSide: BorderSide(color: Colors.black45),)

                  

                  ),
                  
                ),
              ),)
            ),),
            
          ),
          SliverList(delegate: SliverChildListDelegate([
         
        // Padding(padding: EdgeInsets.only(top: 10,left: 8)),
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 9),
            child: Text("Popular Hotel",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
          ),
          SizedBox(
            height: 10,
            
          ),
          popularr(),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("Hotel Packages",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.black ),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text("view all",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.blue),),
              )
            ],
          ),
          SizedBox(height: 10,),
          htp()
          
          ])),
         
          
        
      ],
    ),
   );
  }
}