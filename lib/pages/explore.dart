import 'package:car_booking/constants.dart';
import 'package:car_booking/pages/homepage.dart';
import 'package:car_booking/widgets/logo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class explore extends StatelessWidget {
  const explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50,),
          topNav(),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Browse cars",style: TextStyle(fontSize: 31,fontWeight: FontWeight.w500),),
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: logoslist.length,
                itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                  ),
                  child: Center(child: Image.asset(logoslist[index].logo),),
                ),
              );
            }),
          ),
          SizedBox(height: 20,),
          Column(
            children: [
              ListView.builder(
                itemCount: all_Cars.length,
                  itemBuilder: (context,index){
                return Container(
                  height: 250,
                  width: 300,
                  color: Colors.black,
                );
              }),
            ],
          )
        ],
      ),
    );
  }
}
