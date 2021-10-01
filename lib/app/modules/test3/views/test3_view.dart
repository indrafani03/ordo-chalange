import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/test3_controller.dart';

class Test3View extends GetView<Test3Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "FINANSIAL",
          style: GoogleFonts.poppins(
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: Color(0xff545454)),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GestureDetector(
            child: CircleAvatar(
              backgroundColor: Colors.orange,
              radius: 13,
              child: Icon(
                Icons.arrow_back_sharp,
                color: Colors.white,
                size: 16,
              ),
            ),
            onTap: () => Get.back(),
          ),
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(Icons.assessment, size: 26.0, color: Colors.blue),
              )),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Image.asset("assets/group1.png"),
              )),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 1,
          ),
          Row(),
          SizedBox(
            height: 40,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                Body(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home, color: Color(0xffC6C4C4)),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.list_alt_outlined, color: Color(0xffC6C4C4)),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.timelapse, color: Color(0xffC6C4C4)),
              onPressed: () {},
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 4,
            ),
            Text(
              'Complain',
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 4,
            ),
            Icon(Icons.arrow_forward),
          ],
        ),
        backgroundColor: Colors.blueAccent,
        elevation: 10,
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 1.2,
              height: MediaQuery.of(context).size.height / 7,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(2, 2), // Shadow position
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "TOTAL BONUS",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffFF9A00)),
                    ),
                    Text(
                      "Rp 5.000.000.00",
                      style: GoogleFonts.poppins(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff6D6D6D)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.2,
              height: MediaQuery.of(context).size.height / 7,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(2, 2), // Shadow position
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "PENDING BONUS",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffFF9A00)),
                    ),
                    Text(
                      "Rp 50.000.00",
                      style: GoogleFonts.poppins(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff6D6D6D)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.2,
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(2, 2), // Shadow position
                  ),
                ],
              ),
              child: Column(
                children: [
                  TRX(),
                  new Divider(
                    thickness: 2,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TRXLIST(),
                  TRXLIST(),
                  TRXLIST(),
                  TRXLIST(),
                  TRXLIST(),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.2,
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(2, 2), // Shadow position
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Riwayat Rebate",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffFF9A00)),
                        ),
                      ),
                    ],
                  ),
                  new Divider(
                    thickness: 2,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Riwayat(),
                      Riwayat(),
                      Riwayat(),
                      Riwayat(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Riwayat extends StatelessWidget {
  const Riwayat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blueAccent,
              radius: 15,
              child: Icon(
                Icons.receipt,
                color: Colors.white,
                size: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("#EC1201211",
                      style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff3D6670))),
                  SizedBox(
                    height: 5,
                  ),
                  Text("20 Jul 2021",
                      style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff6C757D))),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 6,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text("Rp 150.000",
              style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffFFFFFF))),
          style: ElevatedButton.styleFrom(
            primary: Colors.orangeAccent,
            minimumSize: Size(30, 30),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50))),
          ),
        ),
      ],
    );
  }
}

class TRXLIST extends StatelessWidget {
  const TRXLIST({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              "ID transaksi",
              style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff94AFB6)),
            ),
            SizedBox(
              height: 5,
            ),
            Text("#EC1201211",
                style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff3D6670))),
          ],
        ),
      ),
      SizedBox(
        width: 20,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("Rebate",
                style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff94AFB6))),
            SizedBox(
              height: 5,
            ),
            Text("Rp. 150.000",
                style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff41BE06))),
          ],
        ),
      ),
      SizedBox(
        width: 20,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              "Tanggal",
              style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff94AFB6)),
            ),
            SizedBox(
              height: 5,
            ),
            Text("17 Juli 2021",
                style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff41BE06))),
          ],
        ),
      )
    ]);
  }
}

class TRX extends StatelessWidget {
  const TRX({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Daftar Rebate",
            style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color(0xff94AFB6)),
          ),
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text("Semua"),
              style: ElevatedButton.styleFrom(
                primary: Colors.orangeAccent,
                minimumSize: Size(30, 30),
                textStyle: GoogleFonts.poppins(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff94AFB6)),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                children: [Text("Filter"), Icon(Icons.short_text_outlined)],
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                minimumSize: Size(30, 30),
                textStyle: GoogleFonts.poppins(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff94AFB6)),
              ),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        )
      ],
    );
  }
}
