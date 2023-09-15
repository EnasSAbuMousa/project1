import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_structuer/center_review.dart';
import 'package:project_structuer/feedback.dart';
import 'package:project_structuer/resources/assets_manager.dart';
import 'package:project_structuer/resources/color_manager.dart';
import 'package:project_structuer/screen_one.dart';
import 'package:project_structuer/trainee_review.dart';
import 'drawerr.dart';

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
                      height: 150,
                              child: Text('''
                      هناك حقيقة مثبتة منذ زمن طويل  وهي أن المحتوى  المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي.. هناك حقيقة مثبتة منذ زمن طويل  وهي أن المحتوى  المقروء لصفحة ما سيلهي القارئ عن التركيز على هناك حقيقة مثبتة منذ زمن طويل  وهي أن المحتوى   
              ''',textAlign:TextAlign.end,style: TextStyle(fontSize: 20),),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Center(child: Text("من نحن",style: TextStyle(color: ColorManager.primaryy,
                  fontSize: 20),),),
                  Center(child: Container(
                  width:210 ,
                  height: 210,
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
                      color: Colors.grey,fontSize: 16
                    ),),),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 65.0),
                    child: Container(
                      width: double.infinity,
                      height: 220,
                      child: Text('''
                      هناك حقيقة مثبتة منذ زمن طويل  وهي أن المحتوى  المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي.. هناك حقيقة مثبتة منذ زمن طويل  وهي أن المحتوى  المقروء لصفحة ما سيلهي القارئ عن التركيز على هناك حقيقة مثبتة منذ زمن طويل  وهي أن المحتوى  المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي.. هناك حقيقة مثبتة منذ زمن طويل  وهي أن المحتوى  المقروء لصفحة ما سيلهي القارئ عن التركيز على هناك حقيقة مثبتة منذ زمن طويل  وهي أن المحتوى  المقروء لصفحة
                      ''',textAlign: TextAlign.end,style: TextStyle(fontSize: 17),),
                    ),
                  ),SizedBox(height: 20,),
                  Center(
                    child: InkWell(
                      onTap: (){

                      },child: Container(
                      width: 150,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: ColorManager.primaryy,
                      ),
                      child: Center(child: Text("عرض المزيد",style: TextStyle(color: Colors.white,fontSize: 16),)),
                    ),
                    ),
                  ),
                  SizedBox(height: 40,),
                  Center(child: Text("خدماتنا",style: TextStyle(color: ColorManager.primaryy,fontSize: 20,fontWeight: FontWeight.bold),),)
                  ,SizedBox(height: 10,),
                  Center(child: Text("دعنا نساعدك في التعرف على الخدمات المقدمة من النادي بشكل افضل",style: TextStyle(color: Colors.grey,fontSize: 15),),),
                  SizedBox(height: 70,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        children: [
                          Container(
                            width: 270,
                            height: 270,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 2,color: ColorManager.primaryy),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.asset(
                                    IconAssets.jombaz,
                                    semanticsLabel: 'Acme Logo',
                                  width: 90,
                                  height: 90,
                                ),
                                Text("جمباز",style: TextStyle(color: ColorManager.primaryy,fontSize: 20,fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                          SizedBox(width: 40,),
                          Container(
                            width: 270,
                            height: 270,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
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
                          SizedBox(width: 40,),
                          Container(
                            width: 270,
                            height: 270,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
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
                          )
                        ],
                      ),
                    ),
                  ),SizedBox(height: 70,),
                  Center(child: Text("اختصارات",style: TextStyle(color: ColorManager.primaryy,fontWeight: FontWeight.bold,fontSize: 20),),),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Material(
                        elevation: 2,
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
                            width: 128,
                            height: 128,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 1,color: Colors.grey)
                            ),child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                  ImageAssets.ffedback,
                                  width: 50,
                                  height: 50,
                                  semanticsLabel: 'Acme Logo'
                              ),                            SizedBox(height: 20,),
                              Text("تغذية راجعة",style: TextStyle(color: ColorManager.primaryy,fontSize: 12))
                            ],
                          ),
                          ),
                        ),
                      ),
                      Material(
                        elevation: 2,
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
                            width: 128,
                            height: 128,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 1,color: Colors.grey)
                            ),child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                  ImageAssets.centerReview,
                                  width: 50,
                                  height: 50,
                                  semanticsLabel: 'Acme Logo'
                              ),
                              SizedBox(height: 20,),
                              Text( "تقييم المركز",style: TextStyle(color: ColorManager.primaryy,fontSize: 12))
                            ],
                          ),
                          ),
                        ),
                      ),
                      Material(
                        elevation: 2,
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
                            width: 128,
                            height: 128,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 1,color: Colors.grey)
                            ),child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                  ImageAssets.trainee_review,
                                  semanticsLabel: 'Acme Logo'
                              ),
                              SizedBox(height: 20,),
                              Text("تقييم المدرب",style: TextStyle(color: ColorManager.primaryy,fontSize: 12))
                            ],
                          ),
                          ),
                        ),
                      ),
                      Material(
                        elevation: 2,
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
                            width: 128,
                            height: 128,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 1,color: Colors.grey)
                            ),child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                  ImageAssets.center_mag,
                                  semanticsLabel: 'Acme Logo'
                              ),                            SizedBox(height: 20,),
                              Text("مجلة المركز",style: TextStyle(color: ColorManager.primaryy,fontSize: 12))
                            ],
                          ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 70,),
               Container(
                 color: ColorManager.primaryy,
                 height: 200,
                 child:
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                          Text("FUTURE HEROES",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),),
                         SizedBox(height: 20,),
                         Text("يمكنك  مشاهدة صفحاتنا على المواقع التالية",style: TextStyle(color: Colors.white,fontSize: 12),),
                         SizedBox(height: 20,),
                         Row(
                           children: [
                             InkWell(
                               onTap:(){

                              },
                               child: CircleAvatar(
                                 backgroundColor: Colors.white,
                                 radius: 17,
                                 child: SvgPicture.asset(
                                     IconAssets.face,
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
                                 radius: 17,
                                 child: SvgPicture.asset(
                                     IconAssets.insta,
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
                                 radius: 17,
                                 child: SvgPicture.asset(
                                     IconAssets.twitter,
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
                                 radius: 17,
                                 child: SvgPicture.asset(
                                     IconAssets.linkedIn,
                                     semanticsLabel: 'Acme Logo'
                                 )
                               ),
                             ),
                           ],
                         )
                       ],
                     ),
                     Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Container(
                           width: 190,
                           height: 40,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             color: Colors.white
                           ),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                             children: [
                               SizedBox(width: 20,),
                               Text("+972595659707",style: TextStyle(color: ColorManager.primaryy,fontSize: 13),),
                               Image.asset(ImageAssets.phone)
                             ],
                           )
                         ),
                         SizedBox(height: 20,),
                         Container(
                             width: 190,
                             height: 40,
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                                 color: Colors.white
                             ),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceAround,
                               children: [
                                 Text("Yousef.n.aljazzar@gmail.com",style: TextStyle(color: ColorManager.primaryy,fontSize: 11),),
                                 Icon(Icons.email,color: ColorManager.primaryy,)
                               ],
                             )
                         ),
                         SizedBox(height: 20,),
                         Container(
                             width: 190,
                             height: 40,
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                                 color: Colors.white
                             ),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceAround,
                               children: [
                                 SizedBox(width: 5,),
                                 Text("الرياض - الشارع الأول",style: TextStyle(color: ColorManager.primaryy,fontSize: 13),),
                                 Icon(Icons.home,color: ColorManager.primaryy,size: 30,)
                               ],
                             )
                         )
                       ],
                     )
                   ],
                 ),
               )
              ],
              ),

            ),
          ),

      ),
    );
  }
}

