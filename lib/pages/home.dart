import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_structuer/resources/assets_manager.dart';
import 'package:project_structuer/resources/color_manager.dart';
import 'center_review.dart';
import 'drawerr.dart';
import 'feedback.dart';
import 'screen_one.dart';
import 'trainee_review.dart';
var ScaffoldKey = GlobalKey<ScaffoldState>();

class homee extends StatefulWidget {

  const homee({super.key});

  @override
  State<homee> createState() => _homeeState();
}
class _homeeState extends State<homee> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: ScaffoldKey,
        drawer: drawerr(),
        appBar: AppBar(
          backgroundColor: ColorManager.primaryy,
          leading: InkWell(
            onTap: (){
              ScaffoldKey.currentState?.openDrawer();
            },
               child: Image.asset(ImageAssets.drawer)
          ),
          actions: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
            Text("FUTURE HEROES",style: TextStyle(fontSize: 20),),
            SizedBox(width: 20,),
            CircleAvatar(
              backgroundImage: AssetImage(ImageAssets.logopng),
              backgroundColor: Colors.transparent,
              radius: 17,
            ),
                SizedBox(width: 15,)
        ])
          ],

          ),

        body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 30,),
               Padding(
                 padding: const EdgeInsets.only(right: 65.0),
                 child: Text("اهلا وسهلا بك عزيزي  الزائر",style: TextStyle(color: ColorManager.primaryy,fontSize: 20,fontWeight: FontWeight.bold,)
                   ,textAlign: TextAlign.end,),
               ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 65.0),
                    child: Container(
                      width: double.infinity,
                      height: 250,
                              child: Text('''
                      هناك حقيقة مثبتة منذ زمن طويل  وهي أن المحتوى  المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي.. هناك حقيقة مثبتة منذ زمن طويل  وهي أن المحتوى  المقروء لصفحة ما سيلهي القارئ عن التركيز على هناك حقيقة مثبتة منذ زمن طويل  وهي أن المحتوى ن التركيز على هناك حقيقة مثبتة منذن التركيز على هناك حقيقة مثبتة منذ ن التركيز على هناك حقيقة مثبتة منذن التركيز على هناك حقيقة مثبتة منذن التركيز على هناك حقيقة مثبتة منذ 
              ''',textAlign:TextAlign.end,style: TextStyle(fontSize: 18),),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Center(child: Text("من نـــحـــن",style: TextStyle(color: ColorManager.primaryy,
                  fontSize: 25,fontWeight: FontWeight.bold),),),
                  Center(child: Container(
                  width:220 ,
                  height: 240,
                  decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage(ImageAssets.logopng),
                  fit: BoxFit.fill
                  )
                  ),
                  )
                  ),
                  Center(child:
                    Text("دعنا نساعدك في التعرف على النادي بشكل افضل",style: TextStyle(
                      color: ColorManager.grey,fontSize: 20
                    ),),),
                  SizedBox(height: 35,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 65.0),
                    child: Container(
                      width: double.infinity,
                      height: 250,
                      child: Text('''
                    ن التركيز على هناك حقيقة مثبتة منذن التركيز على هناك حقيقة مثبتة منذ  هناك حقيقة مثبتة منذ زمن طويل  وهي أن المحتوى  المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي.. هناك حقيقة مثبتة منذ زمن طويل  وهي أن المحتوى  المقروء لصفحة ما سيلهي القارئ عن التركيز على هناك حقيقة مثبتة منذ زمن طويل  وهي أن المحتوى  المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي.. هناك حقيقة مثبتة منذ زمن طويل  وهي أن المحتوى  المقروء لصفحة ما سيلهي القارئ عن التركيز على هناك حقيقة مثبتة منذ زمن طويل  وهي أن المحتوى ن التركيز على هناك حقيقة مثبتة منذ المقروء لصفحة
                      ''',textAlign: TextAlign.end,style: TextStyle(fontSize: 17),),
                    ),
                  ),SizedBox(height: 20,),
                  Center(
                    child: InkWell(
                      onTap: (){

                      },child: Container(
                      width: 290,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: ColorManager.primaryy,
                      ),
                      child: Center(child: Text("عرض المزيد",style: TextStyle(color: Colors.white,fontSize: 22.5),)),
                    ),
                    ),
                  ),
                  SizedBox(height: 40,),
                  Center(child: Text("خدماتنا",style: TextStyle(color: ColorManager.primaryy,fontSize: 25,fontWeight: FontWeight.bold),),)
                  ,SizedBox(height: 10,),
                  Center(child: Text("دعنا نساعدك في التعرف على الخدمات المقدمة من النادي بشكل افضل",style: TextStyle(color: ColorManager.grey,fontSize: 19),),),
                  SizedBox(height: 70,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        children: [
                          Material(
                            elevation: 5,
                            child: Container(
                              width: 310,
                              height: 310,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(width: 2,color: ColorManager.primaryy),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  SvgPicture.asset(
                                      IconAssets.jombaz,
                                      semanticsLabel: 'Acme Logo',
                                    width: 110,
                                    height: 110,
                                  ),
                                  Text("جمباز",style: TextStyle(color: ColorManager.primaryy,fontSize: 20,fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 40,),
                          Material(
                            elevation: 5,
                            child: Container(
                              width: 310,
                              height: 310,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(width: 2,color: ColorManager.primaryy),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  SvgPicture.asset(
                                      IconAssets.tazwandow,
                                      semanticsLabel: 'Acme Logo',
                                    width: 90,
                                    height: 90,
                                  ),
                                  Text("تايكواندو",style: TextStyle(color: ColorManager.primaryy,fontSize: 20,fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 40,),
                          Material(
                            elevation: 5,
                            child: Container(
                              width: 310,
                              height: 310,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(width: 2,color: ColorManager.primaryy),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  SvgPicture.asset(
                                      IconAssets.karateh,
                                      semanticsLabel: 'Acme Logo',
                                    width: 90,
                                    height: 90,
                                  ),
                                  Text("كاراتيه",style: TextStyle(color: ColorManager.primaryy,fontSize: 20,fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),SizedBox(height: 135,),
                  Center(child: Text("اختصارات",style: TextStyle(color: ColorManager.primaryy,fontWeight: FontWeight.bold,fontSize: 25),),),
                  SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Material(
                        elevation: 7,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return feedbacck();
                                }));
                          },
                          child: Container(
                            width: 170,
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                  ImageAssets.ffedback,
                                  width: 80,
                                  height: 80,
                                  semanticsLabel: 'Acme Logo'
                              ),                            SizedBox(height: 20,),
                              Text("تغذية راجعة",style: TextStyle(color: ColorManager.primaryy,fontSize: 15))
                            ],
                          ),
                          ),
                        ),
                      ),
                      Material(
                        elevation: 7,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return centerReview();
                                }));
                          },
                          child: Container(
                            width: 170,
                            height: 170,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                            ),child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                  ImageAssets.centerReview,
                                  width: 70,
                                  height: 70,
                                  semanticsLabel: 'Acme Logo'
                              ),
                              SizedBox(height: 20,),
                              Text( "تقييم المركز",style: TextStyle(color: ColorManager.primaryy,fontSize: 15))
                            ],
                          ),
                          ),
                        ),
                      ),
                      Material(
                        elevation: 7,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return traineeReview();
                                }));
                          },
                          child: Container(
                            width: 170,
                            height: 170,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                            ),child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                  ImageAssets.trainee_review,
                                  width: 70,
                                  height: 70,
                                  semanticsLabel: 'Acme Logo'
                              ),
                              SizedBox(height: 20,),
                              Text("تقييم المدرب",style: TextStyle(color: ColorManager.primaryy,fontSize: 15))
                            ],
                          ),
                          ),
                        ),
                      ),
                      Material(
                        elevation: 7,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return TabBarScreen();
                                }));
                          },
                          child: Container(
                            width: 170,
                            height: 170,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                            ),child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                  ImageAssets.center_mag,
                                  width: 70,
                                  height: 70,
                                  semanticsLabel: 'Acme Logo'
                              ),  SizedBox(height: 20,),
                              Text("مجلة المركز",style: TextStyle(color: ColorManager.primaryy,fontSize: 15))
                            ],
                          ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 100,),
               Container(
                 color: ColorManager.primaryy,
                 height: 350,
                 child:
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                              Text("FUTURE HEROES",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                             SizedBox(height: 20,),
                             Text("يمكنك  مشاهدة صفحاتنا على المواقع التالية",style: TextStyle(color: Colors.white,fontSize: 18),),
                             SizedBox(height: 20,),
                             Row(
                               children: [
                                 InkWell(
                                   onTap:(){

                                  },
                                   child: CircleAvatar(
                                     backgroundColor: Colors.white,
                                     radius: 25,
                                     child: SvgPicture.asset(
                                         IconAssets.face,
                                         width: 20,
                                         height: 20,
                                         semanticsLabel: 'Acme Logo'
                                     )
                                   ),
                                 ),
                                 SizedBox(width: 10,),
                                 InkWell(
                                   onTap: (){

                                   },
                                   child: CircleAvatar(
                                     backgroundColor: Colors.white,
                                     radius: 25,
                                     child: SvgPicture.asset(
                                         IconAssets.insta,
                                         width: 20,
                                         height: 20,
                                         semanticsLabel: 'Acme Logo'
                                     )
                                   ),
                                 ),
                                 SizedBox(width: 10,),
                                 InkWell(
                                   onTap: (){

                                   },
                                   child: CircleAvatar(
                                     backgroundColor: Colors.white,
                                     radius: 25,
                                     child: SvgPicture.asset(
                                         IconAssets.twitter,
                                         width: 20,
                                         height: 20,
                                         semanticsLabel: 'Acme Logo'
                                     )
                                   ),
                                 ),
                                 SizedBox(width: 10,),
                                 InkWell(
                                   onTap: (){

                                   },
                                   child: CircleAvatar(
                                     backgroundColor: Colors.white,
                                     radius: 25,
                                     child: SvgPicture.asset(
                                         IconAssets.linkedIn,
                                         width: 20,
                                         height: 20,
                                         semanticsLabel: 'Acme Logo'
                                     )
                                   ),
                                 ),
                               ],
                             )
                           ],
                         ),
                         Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             SizedBox(height: 45,),
                             Container(
                               width: 310,
                               height: 65,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(12),
                                 color: Colors.white
                               ),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                                 children: [
                                   SizedBox(width: 10,),
                                   Text("+972595659707",style: TextStyle(color: ColorManager.primaryy,fontSize: 20),textAlign: TextAlign.center,),
                                   SvgPicture.asset(
                                       IconAssets.phone,
                                       width: 30,
                                       height: 30,
                                       semanticsLabel: 'Acme Logo'
                                   )
                                 ],
                               )
                             ),
                             SizedBox(height: 30,),
                             Container(
                                 width: 310,
                                 height: 65,
                                 decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(12),
                                     color: Colors.white
                                 ),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                                   children: [
                                     Text("Yousef.aljazzar@gmail.com",style: TextStyle(color: ColorManager.primaryy,fontSize: 19),),
                                     Icon(Icons.email,color: ColorManager.primaryy,size: 35,)
                                   ],
                                 )
                             ),
                             SizedBox(height: 30,),
                             Container(
                                 width: 310,
                                 height: 65,
                                 decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(12),
                                     color: Colors.white
                                 ),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                                   children: [
                                     SizedBox(width: 10,),
                                     Text("الرياض - الشارع الأول",style: TextStyle(color: ColorManager.primaryy,fontSize: 18),),
                                     SvgPicture.asset(
                                         IconAssets.home2,
                                         width: 30,
                                         height: 30,
                                         semanticsLabel: 'Acme Logo'
                                     )
                                   ],
                                 )
                             )
                           ],
                         )
                       ],
                     ),

                 ),
              ] )


            ),
          ),

      ),
    );
  }
}

