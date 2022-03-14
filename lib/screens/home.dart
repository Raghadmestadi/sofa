import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List category = [
    {"name": "Chairs & Sofas", "image": "assets/icons/couch-sofa.png"},
    {"name": " wardrobe", "image": "assets/icons/closet-wardrobe.png"},
    {"name": "BED", "image": "assets/icons/double-bed.png"},
    {"name": "Desk & Table", "image": "assets/icons/desk-furniture-table.png"},
  ];
  List products = [
    {
      "name": "Modern Chair",
      'price': "SAR 119",
      "image": "assets/images/chair3.png",
      'page': 'details'
    },
    {
      "name": "Marble Table",
      'price': "SAR 230",
      "image": "assets/images/table2.png"
    },
    {
      "name": "Comfy Couch",
      'price': "SAR 500",
      "image": "assets/images/sofag.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/sofa1.png',
                width: 140,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black, width: 0.9)),
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: 'Search products',
                          prefixIcon: Icon(Icons.search),
                          suffixIcon: Icon(Icons.tune),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 450,
                height: 250,
                margin: EdgeInsets.symmetric(horizontal: 3),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/bluesale.png'),
                        fit: BoxFit.cover)),
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20, bottom: 10),
                      alignment: Alignment.bottomRight,
                      child: InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'SHOP NOW',
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                            Icon(
                              Icons.play_arrow,
                              size: 15,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'SHOP BY CATEGORY',
                style: TextStyle(
                  color: Color(0xff4F4F4F),
                  fontSize: 18,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 130,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: category.length,
                    itemBuilder: (context, i) {
                      return Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(
                            left: 18, right: 13, top: 5, bottom: 5),
                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xffF1F3F4),
                                ),
                                child: Image.asset(
                                  "${category[i]['image']}",
                                  width: 50,
                                  height: 50,
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            Text("${category[i]['name']}"),
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'OUR BEST SELLERS',
                style: TextStyle(
                  color: Color(0xff4F4F4F),
                  fontSize: 18,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                height: 320,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: products.length,
                    itemBuilder: (context, i) {
                      return GestureDetector(
                        onLongPress: () {
                          Navigator.of(context).pushNamed('details');
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    height: 200,
                                    width: 190,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "${products[i]['image']}"),
                                            fit: BoxFit.fitHeight)),
                                  ),
                                  Positioned(
                                      top: 15,
                                      right: 15,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color.fromARGB(
                                              207, 255, 255, 255),
                                        ),
                                        width: 30,
                                        height: 30,
                                        child: Icon(
                                          Icons.favorite_border_outlined,
                                          color: Colors.grey[600],
                                        ),
                                        // Icon(
                                        //   Icons.favorite,
                                        //   color: Colors.red[700],
                                        // ),
                                      ))
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 1),
                                child: Text("${products[i]['name']}"),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 1),
                                child: Text("Lorem ipsum dolor sit amet",
                                    style: TextStyle(
                                        color: Color(0xff4F4F4F),
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w200,
                                        height: 1.5)),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 2),
                                child: Image.asset(
                                  'assets/icons/rstars.png',
                                  width: 100,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              SizedBox(
                                  width: 190,
                                  height: 40,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("${products[i]['price']}",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        width: 35,
                                        height: 35,
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.shopping_bag_outlined,
                                              size: 20,
                                              color: Colors.white,
                                            )),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
