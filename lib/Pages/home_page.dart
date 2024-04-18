import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 3, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          title: Text(
            'Vadhyantram',
            style: TextStyle(fontSize: 30),
          ),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Iconsax.shopping_cart))
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                color: Colors.grey,
                child: Container(
                  padding: EdgeInsets.only(left: 8, bottom: 15),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Musical Instrument',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Collection',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      TabBar(
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: Colors.transparent,
                          controller: _tabController,
                          isScrollable: true,
                          labelColor: Colors.amber,
                          unselectedLabelColor: Colors.white,

                          tabs: const [
                            Tab(
                              child: Text("1's Tab",
                                style: TextStyle(fontSize: 18,),),
                            ),
                            Tab(
                              child: Text("2's Tab",
                                style: TextStyle(fontSize: 18,),),

                            ),
                            Tab(
                              child: Text("2's Tab",
                                style: TextStyle(fontSize: 18,),),
                            )
                          ]),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
              top: 180,
              left: 20,
              right: 20,
              child: Column(
                children: [
                  Container(
                    height: 200,
                    color: Colors.amber,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                                height: 150,
                                width: 360,
                                child: ListView.builder(
                                  itemCount: 6,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      color: Colors.green,
                                      width: 350,
                                      height: 100,
                                      child: Text('Container 1'),
                                    );
                                  },
                                )),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Latest guitar',
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Show All',
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 150,
                              color: Colors.deepPurple,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 150,
                              color: Colors.indigo,
                            )
                          ],
                        )
                      ],
                    ),
                  ),

                ],
              ),

          ),


        ],
      ),

    );
  }
}
