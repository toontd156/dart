import 'package:flutter/material.dart';
import 'package:labtest05052023/pagetwo.dart';

//print(menuItems[0]["itemname"]); // Output: "Item1"
//print(menuItems[1]["itemprice"]); // Output: 200

class mainpage extends StatefulWidget {
  final String username; // รับค่า username จากหน้า login
  final String password; // รับค่า password จากหน้า login
  const mainpage(
      {super.key,
      required this.username,
      required this.password}); // สร้าง constructor รับค่า username และ password จากหน้า login

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  List<Map<String, dynamic>> products = [
    // List ของสินค้า
    {"itemname": "Item1", "itemprice": 200},
    {"itemname": "Item2", "itemprice": 300},
    {"itemname": "Item3", "itemprice": 400},
  ];
  List Carts = []; // List ของสินค้าในตะกร้า
  int total = 0; // ราคารวมสินค้าในตะกร้า
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MFU Shop'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'products',
                style: TextStyle(fontSize: 20),
              ),
            ),
            ListView.builder(
              // แสดงรายการสินค้า
              shrinkWrap: true,
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  // แสดงรายการสินค้าแต่ละชิ้น
                  title: Text(products[index]["itemname"]),
                  subtitle: Text(products[index]["itemprice"].toString()),
                  trailing: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        total +=
                            int.parse(products[index]["itemprice"].toString());

                        Carts.add(products[index]);
                        print(Carts);
                      });
                    },
                  ),
                );
              },
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Carts',
                style: TextStyle(fontSize: 20),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: Carts.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(Carts[index]["itemname"]),
                  subtitle: Text(Carts[index]["itemprice"].toString()),
                  trailing: IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        total -=
                            int.parse(Carts[index]["itemprice"].toString());
                        Carts.removeAt(index);
                      });
                    },
                  ),
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => pagetwo(
                        itemcount:
                            Carts.length, // .length คือ จำนวนสินค้าในตะกร้า
                        itemprice: total,
                      ),
                    ),
                  );
                });
              },
              child: Text('Checkout'),
            ),
          ],
        ),
      ),
    );
  }
}
