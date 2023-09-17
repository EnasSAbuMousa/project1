import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_structuer/resources/assets_manager.dart';
import 'package:project_structuer/resources/color_manager.dart';
import 'drawerr.dart';
import 'expand_one.dart';
import 'expand_three.dart';
import 'expand_two.dart';
import 'home.dart';

var ScaffoldKey = GlobalKey<ScaffoldState>();
class TabBarScreen extends StatefulWidget {
  TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen>
    with TickerProviderStateMixin {
  bool isSelected=false;
  bool isSelected2=false;
  bool isSelected3=true;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Builder(builder: (BuildContext context) {
          final TabController tabController = DefaultTabController.of(context);
          tabController.addListener(() {
            if (tabController.index == 0) {
              print("Enas");
            }
            if (!tabController.indexIsChanging) {
              print(tabController.index);
            }
          });
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
              body: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 65.0),
                  child: Column(
                    children: [
                      Center(
                          child: Image.asset(
                        ImageAssets.center2,
                        width: 200,
                        height: 200,
                      )),
                      Center(
                          child: Text(
                        "مجلة المركز",
                        style: TextStyle(
                            color: ColorManager.primaryy,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      )),
                      SizedBox(
                        height: 20,
                      ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    width: 700,
                    height: 800,
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: ContainedTabBarView(
                           tabBarProperties: TabBarProperties(
                             indicatorColor: ColorManager.primaryy,
                             unselectedLabelColor: Colors.black,
                             labelColor: ColorManager.primaryy
                           ),

                          tabs: [
                            Tab(child:  Row(
                                mainAxisAlignment:MainAxisAlignment.center,
                                children:[
                                  SvgPicture.asset(
                                      IconAssets.success,
                                      semanticsLabel: 'Acme Logo',
                                      color:isSelected3?ColorManager.primaryy:Colors.black),
                                  SizedBox(width: 20,),
                                  Text('انجازات المركز',style:TextStyle(color:isSelected3?ColorManager.primaryy:Colors.black,fontSize: 25)),
                                ]),

                            ),
                            Tab(child: Row(
                                mainAxisAlignment:MainAxisAlignment.center,
                                children:[
                                  SvgPicture.asset(
                                      IconAssets.plane,
                                      semanticsLabel: 'Acme Logo',
                                      color:isSelected2?ColorManager.primaryy:Colors.black  ),
                                  SizedBox(width: 20,),
                                  Text('الخطط المتقدمة',style:TextStyle( color:isSelected2?ColorManager.primaryy:Colors.black,fontSize: 25)),

                                ]),
                            ),

                            Tab(child:  Row(
                                mainAxisAlignment:MainAxisAlignment.center,
                                  children:[
                                    SvgPicture.asset(
                                        IconAssets.arood,
                                        semanticsLabel: 'Acme Logo',
                                        color:isSelected?ColorManager.primaryy:Colors.black
                                    ),
                                    SizedBox(width: 20,),
                              Text('العروض',style:TextStyle(color:isSelected?ColorManager.primaryy:Colors.black,fontSize: 25)),

                                   ]),
                            ),





                          ],
                          views: [
                            Container(
                                decoration: BoxDecoration(
                                    border: Border(top: BorderSide(width: 2,color: ColorManager.grey))
                                ),
                                child: Expand1()),
                            Container(
                                decoration: BoxDecoration(
                                    border: Border(top: BorderSide(width: 2,color: ColorManager.grey))
                                ),
                                child: Expand2()),
                            Container(
                                decoration: BoxDecoration(
                                    border: Border(top: BorderSide(width: 2,color:ColorManager.grey)
                                )
                                ),
                                child: Expand3())


                          ],
                          onChange: (index) => setState(() {
                            switch(index){
                              case 0:
                              isSelected3=true;
                              isSelected2=false;
                              isSelected=false;
                              break;
                              case 1: isSelected2=true;
                              isSelected=false;
                              isSelected3=false;
                              break;
                              case 2: isSelected=true;
                              isSelected2=false;
                              isSelected3=false;
                              break;
                              default:
                            }
                          })
                        ),
                      ),
                    ),
                  )



                    ],
                  ),
                ),
              ),
            ),
          );
        }));
  }
}
