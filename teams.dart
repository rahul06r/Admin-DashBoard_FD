import 'package:flutter/material.dart';

import '../data.dart';

class Teams extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Your teams",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        color: Colors.white,
                        height: MediaQuery.of(context).size.height,
                        child: Column(
                          children: [
                            Text(
                              "Sales Men Details",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              color: Colors.grey,
                              height: 40,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    width: 100,
                                    child: Text(
                                      "ID",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    width: 100,
                                    child: Text(
                                      "Name",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    width: 100,
                                    child: Text(
                                      "State",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    width: 100,
                                    child: Text(
                                      "Performance",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: List.generate(
                                salesteams.length,
                                (index) => Column(
                                  children: [
                                    InkWell(
                                      splashColor: Colors.yellow,
                                      onTap: () {
                                        salesmendetails(context, index);
                                      },
                                      child: Container(
                                        color: salesteams[index]['per'] ==
                                                'Below Average'
                                            ? Colors.red
                                            : Colors.white,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Container(
                                                width: 100,
                                                child: Text(salesteams[index]
                                                        ['id']
                                                    .toString()),
                                              ),
                                              Container(
                                                width: 100,
                                                child: Text(
                                                  salesteams[index]['name'],
                                                ),
                                              ),
                                              Container(
                                                width: 100,
                                                child: Text(
                                                  salesteams[index]['state'],
                                                ),
                                              ),
                                              Container(
                                                width: 100,
                                                child: Text(
                                                  salesteams[index]['per'],
                                                  style: salesteams[index]
                                                              ['per'] ==
                                                          'Excellent'
                                                      ? TextStyle(fontSize: 20)
                                                      : TextStyle(
                                                          fontSize: 15,
                                                        ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Divider(),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Expanded(
                  //     child: Container(
                  //   color: Colors.yellow,
                  //   height: MediaQuery.of(context).size.height,
                  //   // child: Card(),
                  //   child: Column(
                  //     children: [],
                  //   ),
                  // )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> salesmendetails(BuildContext context, int index) {
    return showDialog(
        context: context,
        builder: (_) {
          var boxDecoration = BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: salesteams[index]['per'] == 'Below Average'
                ? Colors.red
                : salesteams[index]['per'] == 'Excellent'
                    ? Colors.greenAccent
                    : Colors.white,
          );
          return Center(
            child: Container(
              width: 500,
              height: 200,
              decoration: boxDecoration,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(salesteams[index]['id'].toString(),
                      style: salesteams[index]['per'] == 'Below Average'
                          ? TextStyle(color: Colors.white)
                          : TextStyle(color: Colors.black)),
                  Text(salesteams[index]['name'],
                      style: salesteams[index]['per'] == 'Below Average'
                          ? TextStyle(color: Colors.white)
                          : TextStyle(color: Colors.black)),
                  Text(salesteams[index]['state'],
                      style: salesteams[index]['per'] == 'Below Average'
                          ? TextStyle(color: Colors.white)
                          : TextStyle(color: Colors.black)),
                  Text(salesteams[index]['per'],
                      style: salesteams[index]['per'] == 'Below Average'
                          ? TextStyle(color: Colors.white, fontSize: 30)
                          : TextStyle(color: Colors.black, fontSize: 30)),
                ],
              ),
            ),
          );
        });
  }
}
