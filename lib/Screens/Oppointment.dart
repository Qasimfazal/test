import 'package:flutter/material.dart';

class Shedule extends StatefulWidget {
  const Shedule({Key key}) : super(key: key);

  @override
  State<Shedule> createState() => _SheduleState();
}

class _SheduleState extends State<Shedule> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Appointment',
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                            height: 90,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,

                                  blurRadius: 10,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Padding(
                              padding:  EdgeInsets.only(top: 5.0,left: 12),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    radius: 35,
                                    backgroundColor: Colors.grey,
                                    child: Image.asset('assets/Doctor.png'),
                                  ),
                                  SizedBox(width: 15,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 5,),
                                      Row(

                                        children: [
                                          Text('Accepted  ',style: TextStyle(color: Color(0xff00A1E1)),),
                                          Icon(Icons.verified_user_rounded,color: Colors.green,),
                                        ],
                                      ),
                                      Text('Devin Shelton  ',style: TextStyle(color: Colors.black),),
                                      SizedBox(height: 5,),
                                      Text('Recieved at 12:00 AM  ',style: TextStyle(color: Colors.grey),),

                                    ],
                                  ),
                                  Spacer(),
                                  Container(
                                    height: MediaQuery.of(context).size.height,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.blue,

                                    ),
                                  ),
                                ],
                              ),
                            )),
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
