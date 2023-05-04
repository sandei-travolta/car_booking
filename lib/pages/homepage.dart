import 'package:car_booking/pages/explore.dart';
import 'package:car_booking/pages/favourites.dart';
import 'package:car_booking/pages/profile.dart';
import 'package:car_booking/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class Homepage extends StatefulWidget {
   Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController search=TextEditingController();
  int pageindex=0;
  @override
  Widget build(BuildContext context) {
    List pages=[
      homepage(search: search),
      explore(),
      favourites(),
      profile()
    ];
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Body_color,
        body: pages[pageindex],

        bottomNavigationBar: Container(
          height: 60,
          decoration: BoxDecoration(
            color: BNav_color,
            borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: (){
                setState(() {
                  pageindex=0;
                });
              }, icon: pageindex==0? Icon(Icons.home,color: Colors.white,size: 35,):Icon(Icons.home_outlined,color: Colors.white,size: 35,)),
              IconButton(onPressed: (){
                setState(() {
                  pageindex=1;
                });
              }, icon: pageindex==1? Icon(Icons.car_rental,color: Colors.white,size: 35,):Icon(Icons.car_rental,color: Colors.white,size: 35,)),
              IconButton(onPressed: (){
                setState(() {
                  pageindex=2;
                });
              }, icon: pageindex==1? Icon(Icons.favorite_border,color: Colors.white,size: 35,):Icon(Icons.favorite,color: Colors.white,size: 35,)),
              IconButton(onPressed: (){
                setState(() {
                  pageindex=3;
                });
              }, icon: pageindex==3? Icon(Icons.person,color: Colors.white,size: 35,):Icon(Icons.person_2_outlined,color: Colors.white,size: 35,)),
            ],
          ),
        ),
      ),
    );
  }
}

class homepage extends StatelessWidget {
  const homepage({
    super.key,
    required this.search,
  });

  final TextEditingController search;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        SafeArea(
            child: Container(
              height: 50,
          color: Appbar_Color,
          child: topNav(),
        )),
        Container(
          color: Appbar_Color,
          height: 20,
        ),
        Container(
          height: 50,
          color: Appbar_Color,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                  ),
                  child: Center(child: SvgPicture.asset("icons/search-left-1504-svgrepo-com.svg")),
                ),
                SizedBox(width: 25,),
                Container(
                  width: 240,
                  child: TextField(
                    controller: search,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none
                      ),
                      hintText: "Search Cars...",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                      )
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.only(left: 10.0,bottom: 15),
          child: Text("BEST BRANDS",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 30),),
        ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          logos(logo:"images/logos/audi.png",label: "Audi",),
          logos(logo: "images/logos/bmwpng.png",label: "BMW",),
          logos(logo:"images/logos/Volkswagen.png",label: "Volks",)
        ],
      ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                logos(logo:"images/logos/toyota-logo-1989-1400x1200.png" ,label: "Toyota",),
                logos(logo: "images/logos/Mercedes-Benz-logo-2011-1920x1080 (1).png",label: "Mercedes",),
                logos(logo: "images/logos/hond.png",label: "Honda",)
              ],
            ),
      Padding(
        padding: const EdgeInsets.only(top: 10.0,left: 15),
        child: Text("TOP PICKS",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
      ),
      SizedBox(
        height: 150,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: top_picks.length,
            itemBuilder: (context,index){
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 110,
                  width: 280,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width:150,
                            height: 100,
                            decoration: BoxDecoration(
                            ),
                            child: Image.asset(top_picks[index].image,fit: BoxFit.fill,),
                          )
                        ],
                      ),
                      SizedBox(width: 6,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 15,),
                          Text(top_picks[index].tittle,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                          SizedBox(height: 10,),
                          Container(
                            height: 30,
                            width: 110,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                                color: Forwadbutton_color),
                          child: Center(child: Text(top_picks[index].price,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.grey),),),)
                        ],
                      )
                    ],
                  )),
              ),
            ],
          );
        }),
      )
      ]),
    );
  }
}

class topNav extends StatelessWidget {
  const topNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(width: 10,),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
          ),
          child: Center(child: SvgPicture.asset("icons/bars-svgrepo-com.svg")),
        ),
        SizedBox(width: 290,),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white
          ),
          child: Center(child: SvgPicture.asset("icons/bell-notification-svgrepo-com.svg")),
        )
      ],
    );
  }
}

