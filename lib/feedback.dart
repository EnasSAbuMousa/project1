import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_structuer/resources/assets_manager.dart';
import 'package:project_structuer/resources/color_manager.dart';

import 'drawerr.dart';
import 'home.dart';

class feedbacck extends StatefulWidget {
  const feedbacck({super.key});

  @override
  State<feedbacck> createState() => _feedbacckState();
}

class _feedbacckState extends State<feedbacck> {
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
        drawer:drawerr(),
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
                              ImageAssets.feedback2,
                              width: 130,
                              height: 130,
                              semanticsLabel: 'Acme Logo'
                          )),
                      SizedBox(height: 20,),
                      Center(
                          child: Text(
                            "تقديم تغذية راجعة",
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
                                  Text("عنوان الموضوع",style: TextStyle(fontSize: 23),),
                                  SizedBox(width: 60,),
                                  Container(
                                    width: 430,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        border: Border.all(width: 2,color: Colors.grey),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextField(
                                        cursorColor: ColorManager.primaryy,
                                        decoration: InputDecoration(
                                          border: InputBorder.none, // Hide the expand line
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
                                  Text("الموضوع",style: TextStyle(fontSize: 23),),
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
                              SizedBox(height: 50,),
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
                              SizedBox(height: 150,)
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
