import 'package:flutter/material.dart';
import 'package:navigation_flutter/calulator.dart';
import 'package:navigation_flutter/about.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME"),
        backgroundColor: Color.fromARGB(255, 0, 47, 85),
      ),
      drawer: Drawer(
        child: Container(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 21, 140, 238),
                ),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Color.fromARGB(255, 21, 140, 238)),
                  accountName: Text(
                    "Gertrude Uzimana",
                    style: TextStyle(fontSize: 18),
                  ),
                  accountEmail: Text("gerturde23@gmail.com"),
                  currentAccountPictureSize: Size.square(50),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.greenAccent,
                    child: Image.network(
                      "https://images.unsplash.com/photo-1529778873920-4da4926a72c2?q=80&w=1636&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      height: 50.0,
                      width: 50.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text(' My Profile '),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUsPage()));
                
                },
              ),
              ListTile(
                leading: const Icon(Icons.home_filled),
                title: const Text(' My Home '),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
      
                },
              ),
              ListTile(
                leading: const Icon(Icons.workspace_premium),
                title: const Text(' My Calculator '),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CalculatorScreen()));
                },
              ),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://images.unsplash.com/photo-1516617442634-75371039cb3a?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Welcome to Pro-Flutter app  ',
                
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 550.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
               
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
               
              },
              child: Text('Get Started'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        fixedColor: Color.fromARGB(255, 80, 141, 221),
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Calculator",
            icon: Icon(Icons.workspace_premium),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.account_circle),
          ),
        ],
        onTap: (int indexOfItem) {
          // Handle bottom navigation item taps here
          switch (indexOfItem) {
            case 1:
              Navigator.push(context, MaterialPageRoute(builder: (context) => CalculatorScreen()));
              break;
            case 2:
              Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUsPage()));
              break;
          }
        },
      ),
    );
  }
}
