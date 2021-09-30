import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Test1View extends StatelessWidget {
  const Test1View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _MyHomePageState(),
    );
  }
}

class _MyHomePageState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/map.jpg"), fit: BoxFit.cover),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 1,
          height: MediaQuery.of(context).size.height / 7.8,
          color: Colors.white,
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 45,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: GestureDetector(
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 17,
                          child:
                              Icon(Icons.arrow_back_sharp, color: Colors.white),
                        ),
                        onTap: () => Get.back(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "LACAK PESANAN",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.green),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.5,
                    ),
                    GestureDetector(
                      child: Icon(
                        Icons.shopping_bag,
                        color: Colors.green,
                        size: 30,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ]),
      bottomSheet: SolidBottomSheet(
        elevation: 30,
        headerBar: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            height: MediaQuery.of(context).size.height / 5,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 7.0),
                  child: Container(width: 100, height: 3, color: Colors.green),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          width: 70.0,
                          height: 70.0,
                          decoration: BoxDecoration(
                            color: const Color(0xff7c94b6),
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://mobirise.com/bootstrap-template/profile-template/assets/images/timothy-paul-smith-256424-1200x800.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                            border: Border.all(
                              color: Colors.green,
                              width: 4.0,
                            ),
                          ),
                        ),
                      ),
                      // Container(
                      //     width: MediaQuery.of(context).size.width / 4,
                      //     height: MediaQuery.of(context).size.height / 8,
                      //     color: Colors.red)
                    ]),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "David Morel",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text("B 1201 FA",
                              style: TextStyle(color: Colors.green)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        width: 70.0,
                        height: 70.0,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          border: Border.all(
                            color: Colors.green,
                            width: 4.0,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54,
                              blurRadius: 4,
                              offset: Offset(2, 2), // Shadow position
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.messenger_outline_outlined,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )),
        body: ListView(
          children: [
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height / 1,
              width: MediaQuery.of(context).size.width / 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 200,
                        height: 50,
                        child: TimelineTile(
                          endChild: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Status",
                                style: TextStyle(color: Colors.green),
                              ),
                              Text(
                                "Sedang Mengambil barang",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          isFirst: true,
                          indicatorStyle: IndicatorStyle(
                            color: Colors.white,
                            width: 30,
                            iconStyle: IconStyle(
                                iconData: Icons.timelapse, color: Colors.green),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        height: 50,
                        child: TimelineTile(
                          endChild: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Alamat Anda",
                                style: TextStyle(color: Colors.green),
                              ),
                              Text("Taman indah Dago No.162",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                          isLast: true,
                          indicatorStyle: IndicatorStyle(
                            color: Colors.white,
                            width: 30,
                            iconStyle: IconStyle(
                                iconData: Icons.map, color: Colors.green),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Pesanan",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 70.0,
                              height: 70.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://images.tokopedia.net/img/cache/500-square/product-1/2017/1/28/2283807/2283807_9c2116de-fd22-4ab0-aa73-46b216e8a1b0_1600_1200.jpg.webp?ect=4g'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50.0)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black54,
                                    blurRadius: 4,
                                    offset: Offset(2, 2), // Shadow position
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Strawberry",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Text("100 Gram", style: TextStyle()),
                                Text(
                                  "Rp 75.000",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.green),
                                ),
                              ],
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 4),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: SizedBox(
                                child: Text("2 ITEM"),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Catatan Item",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 15,
                          width: MediaQuery.of(context).size.width / 1.2,
                          child: Text(
                            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum ",
                            style: TextStyle(),
                            maxLines: 5,
                            softWrap: true,
                          ),
                        ),
                      ),
                      new Divider(
                        thickness: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 70.0,
                              height: 70.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://images.tokopedia.net/img/cache/500-square/product-1/2017/1/28/2283807/2283807_9c2116de-fd22-4ab0-aa73-46b216e8a1b0_1600_1200.jpg.webp?ect=4g'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50.0)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black54,
                                    blurRadius: 4,
                                    offset: Offset(2, 2), // Shadow position
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Strawberry",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Text("100 Gram", style: TextStyle()),
                                Text(
                                  "Rp 75.000",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.green),
                                ),
                              ],
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 4),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: SizedBox(
                                child: Text("2 ITEM"),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Catatan Item",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 15,
                          width: MediaQuery.of(context).size.width / 1.2,
                          child: Text(
                            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum ",
                            style: TextStyle(),
                            maxLines: 5,
                            softWrap: true,
                          ),
                        ),
                      ),
                      new Divider(
                        thickness: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Catatan Pesanan",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 10,
                          width: MediaQuery.of(context).size.width / 1.2,
                          child: Text(
                            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum ",
                            style: TextStyle(),
                            maxLines: 5,
                            softWrap: true,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.list_alt_outlined, color: Colors.black54),
              onPressed: () {},
            ),
            IconButton(
              icon:
                  Icon(Icons.transfer_within_a_station, color: Colors.black54),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.home, color: Colors.black54),
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
