import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/test2_controller.dart';

class Test2View extends GetView<Test2Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _ProfileScreenState(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.book, color: Colors.black54),
              onPressed: () {},
            ),
            IconButton(
              icon:
                  Icon(Icons.transfer_within_a_station, color: Colors.black54),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.download, color: Colors.black54),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.notifications, color: Colors.black54),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person, color: Colors.black54),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileScreenState extends StatelessWidget {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xffe43e68), Color(0xfffaa449)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: GestureDetector(
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 17,
                    child: Icon(Icons.arrow_back_sharp, color: Colors.white),
                  ),
                  onTap: () => Get.back(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "PORTFOLIO VENDOR",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 4,
              ),
              GestureDetector(
                child: Icon(
                  Icons.shopping_bag,
                  color: Colors.black,
                  size: 30,
                ),
                onTap: () {},
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 9,
              ),
            ],
          ),
        ],
        elevation: 0,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [const Color(00000000), const Color(00000000)],
                  ),
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(style: BorderStyle.solid),
                ),
                child: Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      foreground: Paint()..shader = linearGradient,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            '5.0',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            'Rating',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Column(
                        children: [
                          Text(
                            '100',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            'Review',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Column(
                        children: [
                          Text(
                            '162',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            'Pesanan',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Expanded(
              child: Text(
                "Diana Florist",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Expanded(
              child: Text(
                "Toko bunga terbaik se indonesia raya \nharga murah produk berkualitas",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              width: MediaQuery.of(context).size.width / 7,
              height: 35,
              decoration: BoxDecoration(
                color: Colors.white,
                border:
                    Border.all(style: BorderStyle.solid, color: Colors.grey),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 8),
                    Text("PORTFOLIO"),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Wrap(
              direction: Axis.horizontal,
              children: [
                Product(),
                Product(),
                Product(),
                Product(),
                Product(),
                Product(),
                Product(),
                Product(),
                Product(),
                Product(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Product extends StatelessWidget {
  const Product({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 120,
          height: 120,
          margin: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  "https://www.legacy.com/wp-content/uploads/2020/01/Sympathy-flowers-orange-1000-shutterstock_694680475-1200x900.jpg"),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 70, top: 10),
          child: Container(
            width: 50,
            height: 20,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            child: Row(
              children: [
                Icon(Icons.star, size: 20, color: Colors.yellow),
                Text(
                  "5.0",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              alignment: Alignment.bottomCenter,
              width: 120,
              height: 20,
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text("Ini adalah bunga",
                    style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
