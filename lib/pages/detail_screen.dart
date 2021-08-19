import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterchallenge/objectclass/ForEvent.dart';

// ignore: use_key_in_widget_constructors
class EventDetail extends StatefulWidget {
  final int gelenIndex;
  final List<ForEvent> gelenList;
  const EventDetail(
      {Key? key, required this.gelenIndex, required this.gelenList})
      : super(key: key);
  @override
  _State createState() => _State();
}

class _State extends State<EventDetail> {
  bool _checkbox = false;

  Widget bot() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        IntrinsicHeight(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.fromLTRB(15, 15, 0, 5),
                  child: Text(
                    " " + widget.gelenList[widget.gelenIndex].name.toString(),
                    style: const TextStyle(
                        fontSize: 22.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 15, 0),
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
                padding: const EdgeInsets.only(left: 15),
                child: Icon(Icons.location_pin),
              ),
              Container(
                child: Text(
                  "" + widget.gelenList[widget.gelenIndex].location.toString(),
                  style: const TextStyle(fontSize: 17),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
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
                          fontWeight: FontWeight.bold,
                          color: Colors.red.shade900),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
              child: Container(
                  width: 150,
                  margin: const EdgeInsets.only(top: 20.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black54,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(40))),
                  height: 40,
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Row(
                    children: [
                      TextButton(
                        child: const Text(
                          'Interested',
                          style: TextStyle(color: Colors.red, fontSize: 15),
                        ),
                        onPressed: () {
                          setState(() {
                            _checkbox = !_checkbox;
                          });
                        },
                      ),
                      Expanded(
                        child: Theme(
                          data: ThemeData(unselectedWidgetColor: Colors.white),
                          child: Checkbox(
                            activeColor: Colors.white,
                            checkColor: Colors.red,
                            shape: CircleBorder(),
                            value: _checkbox,
                            onChanged: (value) {},
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
          child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              margin: const EdgeInsets.only(top: 20.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black54,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(40))),
              height: 70,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: TextButton(
                child: const Text(
                  'Check-in',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                onPressed: () {},
              )),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(25, 25, 25, 5),
          child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              margin: const EdgeInsets.only(top: 20.0),
              decoration: BoxDecoration(
                  color: Colors.red.shade900,
                  border: Border.all(
                    color: Colors.red.shade900,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(40))),
              height: 70,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: TextButton(
                child: const Text(
                  'Get Guaranteed Entry',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () {},
              )),
        ),
      ],
    );
  }

  Widget mid() {
    return Expanded(
      child: Container(
          child: DefaultTabController(
              length: 3,
              child: Scaffold(
                  body: Container(
                      child: Column(children: <Widget>[
                top(),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade50,
                        border: Border.all(
                          color: Colors.black54,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(40))),
                    child: TabBar(
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey.shade300,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicator: BoxDecoration(
                          border: Border.all(color: Colors.black54),
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white),
                      tabs: [
                        Tab(
                          child: Container(
                            margin: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Overview",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            margin: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text("Photos",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            margin: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text("Guest List",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                      ], // list of tabs
                    ),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      bot(),
                      Icon(Icons.photo),
                      Icon(Icons.list),
                      // class name
                    ],
                  ),
                ),
              ]))))),
    );
  }

  Widget top() {
    return Container(
      height: MediaQuery.of(context).size.height / 2.8,
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
              margin: EdgeInsets.fromLTRB(15, 50, 15, 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(40))),
              padding: const EdgeInsets.all(10),
              child: const Text(
                "VIP ONLY",
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )),
          Container(
            margin: EdgeInsets.fromLTRB(15, 50, 15, 15),
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
                      style: TextStyle(fontSize: 20.0, color: Colors.black38),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          mid(),
        ],
      ),
    );
  }
}
