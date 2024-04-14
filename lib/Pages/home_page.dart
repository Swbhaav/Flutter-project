
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{

  late final TabController _tabController  = TabController(length: 3, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(16, 45, 0, 0),
              height: MediaQuery.of(context).size.height*0.4,
              color: Colors.black,
              child: Container(
                padding: EdgeInsets.only(left: 8, bottom: 15),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Musical Instrument', style: TextStyle(fontSize:40,color:Colors.white, fontWeight: FontWeight.bold ),),
                    Text('Collection', style: TextStyle(fontSize:40,color:Colors.white, fontWeight: FontWeight.bold ),),

                    TabBar(
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: Colors.transparent,
                        controller: _tabController,
                        isScrollable: true,
                        labelColor: Colors.green,
                        unselectedLabelColor: Colors.grey.withOpacity(0.3),

                        tabs: const[
                          Tab(text: "guitar",),
                          Tab(text: "guitar",),
                          Tab(text: "guitar",)

                        ]
                    ),


                  ],
                ),
              ),


            ),


            Padding(

              padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height*0.265),
              child: Container(
                padding: EdgeInsets.only(left: 12),
                child: TabBarView(
                    controller: _tabController,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.405,
                            child: ListView.builder( itemCount: 6, scrollDirection: Axis.horizontal,itemBuilder: (context,index){
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color: Colors.grey,
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width*0.6,
                                ),
                              );
                            }),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(12,20,12,20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Latest Guitar',
                                      style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),),

                                    Row(
                                      children: [
                                        Text('Show all', style:  TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),),
                                        Icon(Icons.abc_outlined, size: 20,),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of (context).size.height*0.13,
                          )

                        ],
                      ),

                      Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*0.405,
                            color: Colors.greenAccent,
                          ),

                        ],
                      ),

                      Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*0.405,
                            color: Colors.indigoAccent,
                          ),

                        ],
                      ),

                    ]),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
