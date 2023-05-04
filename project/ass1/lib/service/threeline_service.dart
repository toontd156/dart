import 'package:ass1/models/rive_asset.dart';
import 'package:ass1/service/threeline_all_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class three_Line extends StatefulWidget {
  const three_Line({super.key});

  @override
  State<three_Line> createState() => _three_LineState();
}

class _three_LineState extends State<three_Line> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.red,
        child: SafeArea(
          child: Column(
            children: [
              const infoCardPerson(
                name: 'Nattiga',
                role: 'Teacher',
              ),
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 32, bottom: 16),
                    child: Divider(
                      color: Colors.white,
                      height: 1,
                    ),
                  ),
                  Text(
                    "Browse".toUpperCase(),
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.white70),
                  ),
                  ...sideMenus.map((menu) => SideMenu(
                        menu: menu,
                        press: () {},
                        riveonInit: (artboard) {},
                        isActived: false,
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
