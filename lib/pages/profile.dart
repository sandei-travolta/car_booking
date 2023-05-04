import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 25,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text("My profile",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 24),),
            ),
            SizedBox(width: 200,),
            IconButton(onPressed: (){}, icon: Icon(Icons.menu,size: 35,color: Colors.black,))
          ],
        ),
        SizedBox(height: 50,),
        Center(child: CircleAvatar(radius: 100,)),
        SizedBox(height: 10,),
        Center(child: Text("Travolta Sand3i",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text("Email:",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text("sandeidevlab@gmail.com",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
            ),
          ],
        ),
        SizedBox(height: 20,),
        Center(child: Text("Dashhboard",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 21,color: Colors.grey),)),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0,top: 10),
              child: CircleAvatar(radius: 30,
              backgroundColor: Colors.greenAccent,
              child: Icon(Icons.wallet,size: 35,color: Colors.black,),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0,top: 10),
              child: Text("Payments",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
            )
          ],
        ),
        Divider(
          height: 10,
          color: Colors.grey,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0,top: 10),
              child: CircleAvatar(radius: 30,
                backgroundColor: Colors.greenAccent,
                child: Icon(Icons.shield,size: 35,color: Colors.black,),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0,top: 10),
              child: Text("Privacy",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
            )
          ],
        ),
        Divider(
          height: 10,
          color: Colors.grey,
        ),
       Padding(
         padding: const EdgeInsets.only(left: 10.0),
         child: Text("My Account",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 20),),
       ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0,top: 10),
          child: Text("Sign out?",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w500,fontSize: 20),),
        )
      ],
    );
  }
}
