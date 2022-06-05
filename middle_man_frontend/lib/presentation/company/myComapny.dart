import 'package:flutter/material.dart';
import 'package:middle_man_frontend/presentation/Item.dart';
import 'companyDetail.dart';
import 'companyProfile.dart';

class MyComapny extends StatefulWidget {
  const MyComapny({Key? key}) : super(key: key);

  @override
  State<MyComapny> createState() => _MyComapnyState();
}

class _MyComapnyState extends State<MyComapny> {
  String x = "my name is surafel getahun aragaw chernet wolde selasei";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: const Text('My Company'),
        backgroundColor: const Color.fromARGB(255, 19, 10, 200),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 19, 10, 200),
                ),
                child: Text(
                  "MY Company",
                  style: TextStyle(color: Colors.white),
                )),
            ListTile(
              title: const Text("PROFILE",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CompanyProfile())),
            ),
            ListTile(
              title: const Text(
                "ADD ITEM",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Iteme())),
            ),
            ListTile(
              title: const Text("Edit",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              onTap: () {},
            )
          ],
        ),
      ),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return CompanyDetail();
                  }));
                },
                child: Padding(
                    padding: const EdgeInsets.only(
                        right: 20, left: 20, top: 10, bottom: 10),
                    child: Card(
                        elevation: 10,
                        child: Column(
                          children: const [
                            Image(
                              image: AssetImage("middleman.jpg"),
                              height: 300,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 10),
                            Text("surafel", style: TextStyle(fontSize: 30)),
                            SizedBox(height: 10),
                          ],
                        ))));
          }),
    );
  }
}

// ignore: must_be_immutable
 