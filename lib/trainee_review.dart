import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_structuer/resources/assets_manager.dart';
import 'package:project_structuer/resources/color_manager.dart';

import 'drawerr.dart';
import 'home.dart';

class traineeReview extends StatefulWidget {
  const traineeReview({super.key});

  @override
  State<traineeReview> createState() => _traineeReviewState();
}

class _traineeReviewState extends State<traineeReview> {
  final List<String> genderItems = [
    'النص الاول',
    'النص الثاني',
    'النص الثالث',
    'النص الرابع'
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: ScaffoldKey,
        drawer: drawerr(),
        appBar: AppBar(
          backgroundColor: ColorManager.primaryy,
          leading: InkWell(
              onTap: () {
                ScaffoldKey.currentState?.openDrawer();
              },
              child: Image.asset(
                ImageAssets.drawer,
              )),
          actions: [
            Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Text(
                "FUTURE HEROES",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                width: 20,
              ),
              CircleAvatar(
                backgroundImage: AssetImage(ImageAssets.logopng),
                backgroundColor: Colors.transparent,
                radius: 20,
              ),
              SizedBox(
                width: 15,
              )
            ])
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 65.0),
              child: Column(
                children: [
                  SizedBox(height: 80,),
                  Center(
                      child: SvgPicture.asset(
                          ImageAssets.traineeReview,
                          width: 120,
                          height: 120,
                          semanticsLabel: 'Acme Logo'
                      )),
                  SizedBox(height: 30,),
                  Center(
                      child: Text(
                        " تقييم المدرب",
                        style: TextStyle(
                            color: ColorManager.primaryy,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                      child:
                  Text("ساعدنا في تحسين الخدمة المقدمة",style: TextStyle(color: ColorManager.grey,fontSize: 25),)),
                  SizedBox(height: 50,),
                 Directionality(
                   textDirection: TextDirection.rtl,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children:[
                     Text("اختر اسم المدرب",style: TextStyle(fontSize: 20),),
                       SizedBox(width: 60,),
                       Form(
                         child: Padding(
                           padding: const EdgeInsets.only(top: 0),
                           child:
                               SizedBox(
                                 width: 430,
                                 child: Directionality(
                                   textDirection: TextDirection.rtl,
                                   child: DropdownButtonFormField2<String>(
                                     isExpanded: true,
                                     decoration: InputDecoration(
                                       focusedBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(10),
                                           borderSide: BorderSide(
                                               color: Colors.grey,
                                             width: 2
                                           )
                                       ),
                                       contentPadding: const EdgeInsets.symmetric(vertical: 22,horizontal: 16),
                                       enabledBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(10),
                                           borderSide: BorderSide(
                                               color: Colors.grey,
                                             width: 2
                                           )

                                       ),
                                       // Add more decoration..
                                     ),
                                     items: genderItems
                                         .map((item) => DropdownMenuItem<String>(
                                       value: item,
                                       child: Text(
                                         item,
                                         style: const TextStyle(
                                             fontSize: 15,
                                             fontWeight: FontWeight.bold
                                         ),
                                       ),
                                     ))
                                         .toList(),
                                     validator: (value) {
                                       if (value == null) {
                                         return 'Please select gender.';
                                       }
                                       return null;
                                     },
                                     onChanged: (value) {
                                       //Do something when selected item is changed.
                                     },
                                     onSaved: (value) {
                                       selectedValue = value.toString();
                                     },
                                     buttonStyleData: const ButtonStyleData(
                                       padding: EdgeInsets.only(right: 8),
                                     ),
                                     iconStyleData: const IconStyleData(
                                       icon: Icon(
                                         Icons.keyboard_arrow_down_outlined,
                                         color: Colors.black,
                                       ),
                                       iconSize: 24,
                                     ),
                                     dropdownStyleData: DropdownStyleData(
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(15),
                                       ),
                                     ),
                                     menuItemStyleData: const MenuItemStyleData(
                                       padding: EdgeInsets.symmetric(horizontal: 16),
                                     ),
                                   ),
                                 ),
                               ),
                         ),
                       ),
                     ],
              ),
                       SizedBox(height: 40,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children:[
                           Text("المعيار الاول",style: TextStyle(fontSize: 20),),
                           SizedBox(width: 60,),
                           Form(
                             child: Padding(
                               padding: const EdgeInsets.only(top: 0),
                               child:
                               SizedBox(
                                 width: 430,
                                 child: Directionality(
                                   textDirection: TextDirection.rtl,
                                   child: DropdownButtonFormField2<String>(
                                     isExpanded: true,
                                     decoration: InputDecoration(
                                       focusedBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(10),
                                           borderSide: BorderSide(
                                               color: Colors.grey,
                                               width: 2
                                           )
                                       ),
                                       contentPadding: const EdgeInsets.symmetric(vertical: 22,horizontal: 16),
                                       enabledBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(10),
                                           borderSide: BorderSide(
                                               color: Colors.grey,
                                               width: 2
                                           )

                                       ),
                                       // Add more decoration..
                                     ),
                                     items: genderItems
                                         .map((item) => DropdownMenuItem<String>(
                                       value: item,
                                       child: Text(
                                         item,
                                         style: const TextStyle(
                                             fontSize: 15,
                                             fontWeight: FontWeight.bold
                                         ),
                                       ),
                                     ))
                                         .toList(),
                                     validator: (value) {
                                       if (value == null) {
                                         return 'Please select gender.';
                                       }
                                       return null;
                                     },
                                     onChanged: (value) {
                                       //Do something when selected item is changed.
                                     },
                                     onSaved: (value) {
                                       selectedValue = value.toString();
                                     },
                                     buttonStyleData: const ButtonStyleData(
                                       padding: EdgeInsets.only(right: 8),
                                     ),
                                     iconStyleData: const IconStyleData(
                                       icon: Icon(
                                         Icons.keyboard_arrow_down_outlined,
                                         color: Colors.black,
                                       ),
                                       iconSize: 24,
                                     ),
                                     dropdownStyleData: DropdownStyleData(
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(15),
                                       ),
                                     ),
                                     menuItemStyleData: const MenuItemStyleData(
                                       padding: EdgeInsets.symmetric(horizontal: 16),
                                     ),
                                   ),
                                 ),
                               ),
                             ),
                           ),
                         ],
                       ),
                       SizedBox(height: 40,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children:[
                           Text("المعيار الثاني",style: TextStyle(fontSize: 20),),
                           SizedBox(width: 60,),
                           Form(
                             child: Padding(
                               padding: const EdgeInsets.only(top: 0),
                               child:
                               SizedBox(
                                 width: 430,
                                 child: Directionality(
                                   textDirection: TextDirection.rtl,
                                   child: DropdownButtonFormField2<String>(
                                     isExpanded: true,
                                     decoration: InputDecoration(
                                       focusedBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(10),
                                           borderSide: BorderSide(
                                               color: Colors.grey,
                                               width: 2
                                           )
                                       ),
                                       contentPadding: const EdgeInsets.symmetric(vertical: 22,horizontal: 16),
                                       enabledBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(10),
                                           borderSide: BorderSide(
                                               color: Colors.grey,
                                               width: 2
                                           )

                                       ),
                                       // Add more decoration..
                                     ),
                                     items: genderItems
                                         .map((item) => DropdownMenuItem<String>(
                                       value: item,
                                       child: Text(
                                         item,
                                         style: const TextStyle(
                                             fontSize: 15,
                                             fontWeight: FontWeight.bold
                                         ),
                                       ),
                                     ))
                                         .toList(),
                                     validator: (value) {
                                       if (value == null) {
                                         return 'Please select gender.';
                                       }
                                       return null;
                                     },
                                     onChanged: (value) {
                                       //Do something when selected item is changed.
                                     },
                                     onSaved: (value) {
                                       selectedValue = value.toString();
                                     },
                                     buttonStyleData: const ButtonStyleData(
                                       padding: EdgeInsets.only(right: 8),
                                     ),
                                     iconStyleData: const IconStyleData(
                                       icon: Icon(
                                         Icons.keyboard_arrow_down_outlined,
                                         color: Colors.black,
                                       ),
                                       iconSize: 24,
                                     ),
                                     dropdownStyleData: DropdownStyleData(
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(15),
                                       ),
                                     ),
                                     menuItemStyleData: const MenuItemStyleData(
                                       padding: EdgeInsets.symmetric(horizontal: 16),
                                     ),
                                   ),
                                 ),
                               ),
                             ),
                           ),
                         ],
                       ),
                       SizedBox(height: 40,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children:[
                           Text("المعيار الثالث",style: TextStyle(fontSize: 20),),
                           SizedBox(width: 60,),
                           Form(
                             child: Padding(
                               padding: const EdgeInsets.only(top: 0),
                               child:
                               SizedBox(
                                 width: 430,
                                 child: Directionality(
                                   textDirection: TextDirection.rtl,
                                   child: DropdownButtonFormField2<String>(
                                     isExpanded: true,
                                     decoration: InputDecoration(
                                       focusedBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(10),
                                           borderSide: BorderSide(
                                               color: Colors.grey,
                                               width: 2
                                           )
                                       ),
                                       contentPadding: const EdgeInsets.symmetric(vertical: 22,horizontal: 16),
                                       enabledBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(10),
                                           borderSide: BorderSide(
                                               color: Colors.grey,
                                               width: 2
                                           )

                                       ),
                                       // Add more decoration..
                                     ),
                                     items: genderItems
                                         .map((item) => DropdownMenuItem<String>(
                                       value: item,
                                       child: Text(
                                         item,
                                         style: const TextStyle(
                                             fontSize: 15,
                                             fontWeight: FontWeight.bold
                                         ),
                                       ),
                                     ))
                                         .toList(),
                                     validator: (value) {
                                       if (value == null) {
                                         return 'Please select gender.';
                                       }
                                       return null;
                                     },
                                     onChanged: (value) {
                                       //Do something when selected item is changed.
                                     },
                                     onSaved: (value) {
                                       selectedValue = value.toString();
                                     },
                                     buttonStyleData: const ButtonStyleData(
                                       padding: EdgeInsets.only(right: 8),
                                     ),
                                     iconStyleData: const IconStyleData(
                                       icon: Icon(
                                         Icons.keyboard_arrow_down_outlined,
                                         color: Colors.black,
                                       ),
                                       iconSize: 24,
                                     ),
                                     dropdownStyleData: DropdownStyleData(
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(15),
                                       ),
                                     ),
                                     menuItemStyleData: const MenuItemStyleData(
                                       padding: EdgeInsets.symmetric(horizontal: 16),
                                     ),
                                   ),
                                 ),
                               ),
                             ),
                           ),
                         ],
                       ),
                       SizedBox(height: 40,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children:[
                           Text("المعيار الرابع",style: TextStyle(fontSize: 20),),
                           SizedBox(width: 60,),
                           Form(
                             child: Padding(
                               padding: const EdgeInsets.only(top: 0),
                               child:
                               SizedBox(
                                 width: 430,
                                 child: Directionality(
                                   textDirection: TextDirection.rtl,
                                   child: DropdownButtonFormField2<String>(
                                     isExpanded: true,
                                     decoration: InputDecoration(
                                       focusedBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(10),
                                           borderSide: BorderSide(
                                               color: Colors.grey,
                                               width: 2
                                           )
                                       ),
                                       contentPadding: const EdgeInsets.symmetric(vertical: 22,horizontal: 16),
                                       enabledBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(10),
                                           borderSide: BorderSide(
                                               color: Colors.grey,
                                               width: 2
                                           )

                                       ),
                                       // Add more decoration..
                                     ),
                                     items: genderItems
                                         .map((item) => DropdownMenuItem<String>(
                                       value: item,
                                       child: Text(
                                         item,
                                         style: const TextStyle(
                                             fontSize: 15,
                                             fontWeight: FontWeight.bold
                                         ),
                                       ),
                                     ))
                                         .toList(),
                                     validator: (value) {
                                       if (value == null) {
                                         return 'Please select gender.';
                                       }
                                       return null;
                                     },
                                     onChanged: (value) {
                                       //Do something when selected item is changed.
                                     },
                                     onSaved: (value) {
                                       selectedValue = value.toString();
                                     },
                                     buttonStyleData: const ButtonStyleData(
                                       padding: EdgeInsets.only(right: 8),
                                     ),
                                     iconStyleData: const IconStyleData(
                                       icon: Icon(
                                         Icons.keyboard_arrow_down_outlined,
                                         color: Colors.black,
                                       ),
                                       iconSize: 24,
                                     ),
                                     dropdownStyleData: DropdownStyleData(
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(15),
                                       ),
                                     ),
                                     menuItemStyleData: const MenuItemStyleData(
                                       padding: EdgeInsets.symmetric(horizontal: 16),
                                     ),
                                   ),
                                 ),
                               ),
                             ),
                           ),
                         ],
                       ),
                       SizedBox(height: 40,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children:[
                           Text("المعيار الخامس",style: TextStyle(fontSize: 20),),
                           SizedBox(width: 60,),
                           Form(
                             child: Padding(
                               padding: const EdgeInsets.only(top: 0),
                               child:
                               SizedBox(
                                 width: 430,
                                 child: Directionality(
                                   textDirection: TextDirection.rtl,
                                   child: DropdownButtonFormField2<String>(
                                     isExpanded: true,
                                     decoration: InputDecoration(
                                       focusedBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(10),
                                           borderSide: BorderSide(
                                               color: Colors.grey,
                                               width: 2
                                           )
                                       ),
                                       contentPadding: const EdgeInsets.symmetric(vertical: 22,horizontal: 16),
                                       enabledBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(10),
                                           borderSide: BorderSide(
                                               color: Colors.grey,
                                               width: 2
                                           )

                                       ),
                                       // Add more decoration..
                                     ),
                                     items: genderItems
                                         .map((item) => DropdownMenuItem<String>(
                                       value: item,
                                       child: Text(
                                         item,
                                         style: const TextStyle(
                                             fontSize: 15,
                                             fontWeight: FontWeight.bold
                                         ),
                                       ),
                                     ))
                                         .toList(),
                                     validator: (value) {
                                       if (value == null) {
                                         return 'Please select gender.';
                                       }
                                       return null;
                                     },
                                     onChanged: (value) {
                                       //Do something when selected item is changed.
                                     },
                                     onSaved: (value) {
                                       selectedValue = value.toString();
                                     },
                                     buttonStyleData: const ButtonStyleData(
                                       padding: EdgeInsets.only(right: 8),
                                     ),
                                     iconStyleData: const IconStyleData(
                                       icon: Icon(
                                         Icons.keyboard_arrow_down_outlined,
                                         color: Colors.black,
                                       ),
                                       iconSize: 24,
                                     ),
                                     dropdownStyleData: DropdownStyleData(
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(15),
                                       ),
                                     ),
                                     menuItemStyleData: const MenuItemStyleData(
                                       padding: EdgeInsets.symmetric(horizontal: 16),
                                     ),
                                   ),
                                 ),
                               ),
                             ),
                           ),
                         ],
                       ),
                      SizedBox(height: 40,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("اضافة ملاحظات",style: TextStyle(fontSize: 20),),
                           SizedBox(width: 60,),
                           Container(
                             width: 430,
                             height: 300,
                             decoration: BoxDecoration(
                               border: Border.all(width: 2,color: Colors.grey),
                               borderRadius: BorderRadius.circular(10)
                             ),
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: TextField(
                                 maxLines: null,
                                 expands: true,
                                 cursorColor: ColorManager.primaryy,
                                 decoration: InputDecoration(
                                   border: InputBorder.none, // Hide the expand line
                                 ),
                               ),
                             ),

                           ),
                         ],
                       ),
                       SizedBox(height: 100,),
                       Center(
                         child:InkWell(
                           onTap: (){

                           },
                           child: Container(
                             width: 280,
                             height: 55,
                             child: Center(child: Text("ارسال التقييم",style: TextStyle(color: Colors.white,fontSize: 22),)),
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               color: ColorManager.primaryy,
                             ),
                           ),
                         ) ,
                       ),
                       SizedBox(height: 50,)
                   ]),
                 )
                  ])

              ),
            ),
        ),
            ),
    );
  }
}
