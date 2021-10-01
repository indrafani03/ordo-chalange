import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
              icon: Icon(Icons.chrome_reader_mode, color: Color(0xffC6C4C4)),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.swap_horiz, color: Color(0xffC6C4C4)),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.move_to_inbox, color: Color(0xffC6C4C4)),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.assessment, color: Color(0xffC6C4C4)),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset("assets/vektor.png"),
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
                    radius: 13,
                    child: Icon(
                      Icons.arrow_back_sharp,
                      color: Colors.white,
                      size: 12,
                    ),
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
                      fontSize: 16,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 3.2,
              ),
              GestureDetector(
                child: Icon(
                  Icons.notifications,
                  color: Colors.black,
                  size: 25,
                ),
                onTap: () {},
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 10,
                ),
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
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff262626)),
                          ),
                          Text('Rating',
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff262626)))
                        ],
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Column(
                        children: [
                          Text(
                            '100',
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff262626)),
                          ),
                          Text('Review',
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff262626)))
                        ],
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Column(
                        children: [
                          Text(
                            '162',
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff262626)),
                          ),
                          Text('Pesanan',
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff262626)))
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
            child: SizedBox(
              child: Text(
                "Diana Florist",
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SizedBox(
              child: Text(
                "Toko bunga terbaik se indonesia raya \nharga murah produk berkualitas",
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
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
                    SizedBox(height: 7),
                    Text("PORTFOLIO",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
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
          ),
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
                  style: GoogleFonts.poppins(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
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
                child: Text(
                  "Ini adalah bunga",
                  style: GoogleFonts.poppins(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
