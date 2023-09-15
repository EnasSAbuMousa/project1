import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_structuer/resources/color_manager.dart';

import 'expand_one.dart';
import 'expand_three.dart';
import 'expand_two.dart';
import 'home.dart';

class tabBar2 extends StatefulWidget {
  const tabBar2({super.key});

  @override
  State<tabBar2> createState() => _tabBar2State();
}

class _tabBar2State extends State<tabBar2>  with TickerProviderStateMixin {
  bool isClick = false;
  bool isClick2 = false;
  bool isClick3 = false;

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

                body:
                Column(
                    children: [
                      TabBar(
                        indicatorColor: Colors.transparent,
                        indicatorWeight: 2.3,
                        labelColor: ColorManager.primaryy,
                        tabs: [
                          Tab(
                            child: Padding(
                              padding: EdgeInsets.only(top: 7.0),
                              child:
                              InkWell(onTap: () {
                                setState(() {
                                  isClick = true;
                                  isClick2 = false;
                                  isClick3 = false;
                                });
                              },
                                child:
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("العروض",
                                        style: TextStyle(
                                            color: isClick ? ColorManager
                                                .primaryy : Colors.black,
                                            fontSize: 25)),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Icon(
                                      Icons.local_offer,
                                      color: isClick
                                          ? ColorManager.primaryy
                                          : Colors.black,
                                      size: 25,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),


                          Tab(
                            child: Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child:
                              InkWell(onTap: () {
                                setState(() {
                                  isClick = false;
                                  isClick2 = true;
                                  isClick3 = false;
                                });
                              },
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.end,
                                    children: [
                                      Text("الخطط القادمة",
                                          style: TextStyle(
                                              color: isClick2 ? ColorManager
                                                  .primaryy : Colors.black,
                                              fontSize: 25)),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Icon(
                                        Icons.library_books,
                                        color: isClick2
                                            ? ColorManager.primaryy
                                            : Colors.black,
                                        size: 25,
                                      )
                                    ]),
                              ),
                            ),
                          ),
                          Tab(
                              child: Padding(
                                padding: EdgeInsets.only(top: 10.0),
                                child:
                                InkWell(onTap: () {
                                  setState(() {
                                    isClick = false;
                                    isClick2 = false;
                                    isClick3 = true;
                                  });
                                },
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.end,
                                      children: [
                                        Text(" انجازات المركز",
                                            style: TextStyle(
                                                color: isClick3 ? ColorManager
                                                    .primaryy : Colors.black,
                                                fontSize: 25)),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Icon(
                                          Icons.attach_money_outlined,
                                          color: isClick3 ? ColorManager
                                              .primaryy : Colors.black,
                                          size: 25,
                                        )
                                      ]),
                                ),
                              )
                          ),

                        ],
                      ),

                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    width: 1, color: ColorManager.grey))),
                        child: Row(
                          children: [
                            Expanded(
                                child:
                                Container(
                                  height: 10,
                                  decoration: BoxDecoration(
                                    border: Border(top: BorderSide(width: 3,
                                        color: isClick
                                            ? ColorManager.primaryy
                                            : Colors.transparent)),
                                  ),
                                )),
                            Expanded(
                                child:
                                Container(
                                  height: 10,
                                  decoration: BoxDecoration(
                                    border: Border(top: BorderSide(width: 3,
                                        color: isClick2
                                            ? ColorManager.primaryy
                                            : Colors.transparent)),
                                  ),
                                )),
                            Expanded(
                                child: Container(
                                  height: 10,
                                  decoration: BoxDecoration(
                                    border: Border(top: BorderSide(width: 3,
                                        color: isClick3
                                            ? ColorManager.primaryy
                                            : Colors.transparent)),
                                  ),
                                )),
                          ],
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                            children: [
                              Expand1(),
                              Expand2(),
                              Expand3(),

                            ]),
                      ),
                    ]),


              )
          );
        }));
  }
}