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
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white70,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SearchPage()));
            },
          )
        ],
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
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          // currentIndex: _selectedPage,
          unselectedItemColor: Colors.black,
          selectedItemColor: const Color.fromARGB(255, 19, 10, 200),

          // onTap: (int index) {
          //   setState(() {
          //     _selectedPage = index;
          //   });
          // },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.black,
                ),
                label: 'dcdckjd'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.black,
                ),
                label: 'dcdckjd'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.black,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
              label: 'Detail',
            ),
          ]),
    ); //
  }
}

// ignore: must_be_immutable
class SearchPage extends StatelessWidget {
  final String x = "my name is surefel getahun aragaw chernet wolde selasei";
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: const Color.fromARGB(255, 19, 10, 200),
          // The search area here
          title: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyComapny()));
                        /* Clear the search field */
                      },
                    ),
                    hintText: 'Search...',
                    border: InputBorder.none),
              ),
            ),
          )),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black87,
                ),
                child: Text(
                  "MY COMPANY",
                  style: TextStyle(color: Colors.white),
                )),
            ListTile(
              title: const Text("Edit",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              onTap: () => const CompanyProfile(),
            ),
            ListTile(
              title: const Text(
                "Edit",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              onTap: () {},
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
                        elevation: 5,
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
