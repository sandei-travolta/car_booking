import 'package:flutter/material.dart';
class logos extends StatelessWidget {
  logos({super.key, this.logo, this.label,});

  final logo;
  final label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white
        ),
        child: Image.asset(logo),
      ),
        SizedBox(height: 10,),
        Text(label,style: TextStyle(fontSize: 21,fontWeight: FontWeight.w600),)
      ],
    );
  }
}
List logoslist=[
  logos(logo:"images/logos/audi.png",label: "Audi",),
  logos(logo: "images/logos/bmwpng.png",label: "BMW",),
  logos(logo:"images/logos/Volkswagen.png",label: "Volks",),
  logos(logo:"images/logos/toyota-logo-1989-1400x1200.png" ,label: "Toyota",),
  logos(logo: "images/logos/Mercedes-Benz-logo-2011-1920x1080 (1).png",label: "Mercedes",),
  logos(logo: "images/logos/hond.png",label: "Honda",)
];
