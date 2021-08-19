import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterchallenge/objectclass/ForEvent.dart';

import 'detail_screen.dart';

class MainPage extends StatefulWidget {
  List<ForEvent> recordEvent = [];

  @override
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  Widget bottom() {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
          child: Container(
            child: const CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  "https://img-s2.onedio.com/id-53a822a022ce5c5940dc5c21/rev-0/w-900/h-1011/f-jpg/s-f9bbe4bdb924cd05183e88dfe75b1e1636aa4c0d.jpg"),
              backgroundColor: Colors.transparent,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2.0,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(50, 15, 0, 0),
          child: Container(
            child: const CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  "https://img-s2.onedio.com/id-53a822a022ce5c5940dc5c21/rev-0/w-900/h-1011/f-jpg/s-f9bbe4bdb924cd05183e88dfe75b1e1636aa4c0d.jpg"),
              backgroundColor: Colors.transparent,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2.0,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(85, 15, 0, 0),
          child: Container(
            child: const CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  "https://img-s2.onedio.com/id-53a822a022ce5c5940dc5c21/rev-0/w-900/h-1011/f-jpg/s-f9bbe4bdb924cd05183e88dfe75b1e1636aa4c0d.jpg"),
              backgroundColor: Colors.transparent,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2.0,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(120, 15, 0, 0),
          child: Container(
            alignment: AlignmentDirectional.center,
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Text(
              "+124",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.red.shade900),
            ),
          ),
        ),
      ],
    );
  }

  Widget topMid() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          height: 200,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://festtr.com/wp-content/uploads/genel-festival-yyy-08.10.2020-00-24-26.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(40))),
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "VIP ONLY",
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )),
              Container(
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                padding: const EdgeInsets.all(10),
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        child: const Text(
                          "17",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: const Text(
                          "FEB",
                          style:
                              TextStyle(fontSize: 20.0, color: Colors.black38),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  margin: const EdgeInsets.fromLTRB(15, 15, 0, 5),
                  child: const Text(
                    "Grand Opening",
                    style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 15, 0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                padding: const EdgeInsets.all(10),
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(child: Icon(Icons.star)),
                      Container(
                        child: const Text(
                          "4.8",
                          style:
                              TextStyle(fontSize: 20.0, color: Colors.black38),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Icon(Icons.location_pin),
              ),
              Container(
                child: const Text(
                  "Main-Stage-Ushuia",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ],
          ),
        ),
        bottom(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
            bottomNavigationBar: const TabBar(
                labelColor: Color(0xFFFF0000),
                unselectedLabelColor: Colors.black54,
                tabs: [
                  Tab(icon: Icon(Icons.explore), text: "Explore"),
                  Tab(icon: Icon(Icons.star), text: "For U"),
                  Tab(icon: Icon(Icons.euro), text: "Wallet"),
                  Tab(icon: Icon(Icons.account_circle), text: "Profile"),
                ]),
            backgroundColor: Colors.white,
            body: Column(
              children: [
                Expanded(
                  child: TabBarView(
                    children: [
                      const Center(
                        child: Text(
                          "FLUTTER CHALLENGE",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5, 125, 0, 35),
                            child: Container(
                                alignment: Alignment.bottomLeft,
                                padding: const EdgeInsets.all(10),
                                child: const Text(
                                  'Events you might like',
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.black38),
                                )),
                          ),
                          Container(
                              alignment: Alignment.bottomLeft,
                              padding: const EdgeInsets.all(10),
                              child: const Text(
                                "Because you've attended  Techno Bunker ",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black38),
                              )),
                          Expanded(
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (BuildContext context, int index) =>
                                  SizedBox(
                                height: 100,
                                width: 300,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => EventDetail(
                                          gelenIndex: index,
                                          gelenList: widget.recordEvent,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Card(
                                    color: Colors.white70,
                                    elevation: 4,
                                    child: topMid(),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                              alignment: Alignment.bottomLeft,
                              padding: const EdgeInsets.only(left: 5, top: 50),
                              child: const Text(
                                'Your friends are interested in',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black38),
                              )),
                        ],
                      ),
                      const Icon(Icons.euro, size: 350),
                      const Icon(Icons.account_circle, size: 350),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }

  void getData() {
    var eventList = [
      "1.Event",
      "2.Event",
      "3.Event",
      "4.Event",
      "5.Event",
      "6.Event",
      "7.Event",
      "8.Event",
      "9.Event",
      "10.Event"
    ];
    var locationList = [
      "Outside",
      "Outside",
      "Outside",
      "Outside",
      "Outside",
      "Outside",
      "Westside",
      "Eastside",
      "Northside",
      "SouthEast"
    ];
    var priceList = [
      "50€",
      "2000€",
      "200€",
      "200€",
      "100€",
      "€50€",
      "250€",
      "300€",
      "400€",
      "1000€"
    ];
    widget.recordEvent = List.generate(
        10,
        (index) =>
            ForEvent(eventList[index], locationList[index], priceList[index]));
  }
}
