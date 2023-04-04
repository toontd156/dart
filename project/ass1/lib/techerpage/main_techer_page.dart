import 'dart:async';

import 'package:ass1/service/Button_service.dart';
import 'package:ass1/service/List_history_service.dart';
import 'package:ass1/service/historyalldata_service.dart';
import 'package:ass1/techerpage/notification_techer_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TecherPage extends StatefulWidget {
  final String name;
  const TecherPage({super.key, required this.name});

  @override
  State<TecherPage> createState() => _TecherPageState();
}

class _TecherPageState extends State<TecherPage> {
  int _changeimg = 0;
  List<String> _imgUrl = [
    'https://media.discordapp.net/attachments/697404744460795936/1083642150098583552/334073368_2573360326145345_3407480155702441178_n.jpg?width=1254&height=1254',
    'https://media.discordapp.net/attachments/697404744460795936/1083642150387978240/333407952_1166169037431231_7692498717313110153_n.jpg?width=1254&height=1254'
  ];

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (timer) {
      setState(() {
        _changeimg = (_changeimg + 1) % _imgUrl.length;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Techer',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: 380,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 300,
                        height: 200,
                        child: Image.network(
                          _imgUrl[_changeimg],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyButton(
                  imageurl:
                      'https://cdn.discordapp.com/attachments/697404744460795936/1082258543907962960/notification.png',
                  buttontext: 'notification',
                  namepage: Noti_Techer(name: widget.name),
                ),
                MyButton(
                  imageurl:
                      'https://cdn.discordapp.com/attachments/697404744460795936/1082259632363417650/payment.png',
                  buttontext: 'history',
                  namepage: HistoryAllData(),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            List_History(
              nametecher: widget.name,
            ),
          ],
        ),
      ),
    );
  }
}
