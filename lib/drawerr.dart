import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_structuer/resources/assets_manager.dart';
import 'package:project_structuer/resources/color_manager.dart';
import 'package:project_structuer/screen_one.dart';
import 'package:project_structuer/trainee_review.dart';

import 'center_review.dart';
import 'feedback.dart';
import 'home.dart';

class drawerr extends StatefulWidget {
  const drawerr({super.key});

  @override
  State<drawerr> createState() => _drawerrState();
}

class _drawerrState extends State<drawerr> {
  @override
  Widget build(BuildContext context) {
    return
        SafeArea(
          child: Drawer(
          child: Column(
            children: [
              Container(
                width:double.infinity,
                height: 50,
                color: Color(0xffC0C5CE),
                child: Padding(
                  padding: const EdgeInsets.only(right: 250.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).pop();
                      },
                      child: Icon(Icons.arrow_back_ios_sharp)),
                ),
              ),
             Image.asset(ImageAssets.logopng,width: 210,height: 210,),
              SizedBox(height: 15,),
              Divider(
                height: 1,
                  color: Color(0xffC0C5CE),
                thickness: 2,
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0,left:8,top: 20),
                  child:InkWell(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return homee();
                          }));
                    },
                  child: ListTile(
                    leading:  SvgPicture.asset(
                      IconAssets.home,
                      semanticsLabel: 'Acme Logo',
                     width: 25,
                      height: 25,
                    ),
                    title: Text("الرئيسية",style: TextStyle(fontSize: 17),),
                    trailing:
                         Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 15,)),

                  ),
                ),
              ),
              Divider(
                height: 1,
                  color: Color(0xffC0C5CE),
                thickness: 2,
              ),
              SizedBox(height: 15,),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0,left:8),
                  child:InkWell(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return TabBarScreen();
                          }));
                    },
                  child: ListTile(
                    leading:  SvgPicture.asset(
                      IconAssets.book,
                      semanticsLabel: 'Acme Logo',
                      width: 23,
                      height: 23,
                    ), title: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text("مجلة المركز",style: TextStyle(fontSize: 15)),
                    ),
                    trailing:
                         Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 15,)),


                  ),
                ),
              ),
              Divider(
                  height: 1,
                  color: Color(0xffC0C5CE),
                thickness: 2,
              ),
              SizedBox(height: 15,),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return traineeReview();
                          }));
                    },
                  child: ListTile(
                    leading:  SvgPicture.asset(
                      IconAssets.star,
                      semanticsLabel: 'Acme Logo',
                      width: 25,
                      height: 25,
                    ), title: Text(" تقييم المدرب",style: TextStyle(fontSize: 17)),
                    trailing:
                         Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 15,)),


                  ),
                ),
              ),
              Divider(
                  height: 1,
                  color: Color(0xffC0C5CE),
                thickness: 2,
              ),
              SizedBox(height: 15,),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child:InkWell(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return centerReview();
                          }));
                    },
                  child: ListTile(
                    leading:  SvgPicture.asset(
                      IconAssets.star,
                      semanticsLabel: 'Acme Logo',
                      width: 25,
                      height: 25,
                    ),title: Text("تقييم الخدمة بشكل كامل",style: TextStyle(fontSize: 15)),
                    trailing:
                       Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 15,)),


                  ),
                ),
              ),
              Divider(
                  height: 1,
                  color: Color(0xffC0C5CE),
                thickness: 2,
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 20),
                child:  InkWell(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return feedbacck();
                          }));
                    },
                  child: ListTile(
                    leading:  SvgPicture.asset(
                      IconAssets.pen,
                      semanticsLabel: 'Acme Logo',
                      width: 25,
                      height: 25,
                    ),  title: Text("ساعدنا لتديم خدمة افضل",style: TextStyle(fontSize: 15),),
                    trailing:
                        Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 15,)),

                  ),
                ),
              )

            ],
          ),

          ),
        );
  }
}
