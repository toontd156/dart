import 'package:flutter/material.dart';
import 'package:labtest05052023/pagetwo.dart';

List<Map<String, dynamic>> menuItems = [
  {"itemname": "Item1", "itemprice": 100},
  {"itemname": "Item2", "itemprice": 200},
  {"itemname": "Item3", "itemprice": 300},
];
class mainpage extends StatefulWidget {
    final String username; 
    final String password;
    const mainpage(
      super.key
       required this.username,
       required this.password});

       @override
  State<mainpage> createState() => _mainpageState();
}
class _mainpageState extends State<mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text(widget.username), 
        ),
        body: ListView.builder(
        itemCount: menuItems.length, 
        itemBuilder: (BuildContext context, int index) {

        return GestureDetector(
            onTap: () {
              // print(index);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => pagetwo(
                            itemname: menuItems[index]["itemname"],
                            itemprice: menuItems[index]["itemprice"],
                          )));
            },
            child: ListTile( 
                  //
              title: Text(menuItems[index]["itemname"]),
              subtitle: Text(menuItems[index]["itemprice"].toString()),
            ),
          );
        },
      ),
    );
  }
}
    


