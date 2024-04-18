import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vadhyantram/Pages/product_card.dart';
import 'package:vadhyantram/Pages/product_description_page.dart';

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
                              child: Text(
                                "1st Tab",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "2nd Tab",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "3rd Tab",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
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
                SizedBox(height: 30,),
                GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.8,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 4,
                      mainAxisExtent: 288,

                    ),
                    itemCount: 4,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return ProductCard(
                          name: 'Gibson Guitar',
                          imageUrl:
                          'https://th.bing.com/th/id/OIP.leBWjrFWlWRw6HKH--eqXAHaHQ?rs=1&pid=ImgDetMain',
                          price: 3000000,
                          offerTag: '20% off',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                    const ProductDescriptionPage()));
                          });
                    })


              ],
            ),
          ),
        ],
      ),
    );
  }
}
