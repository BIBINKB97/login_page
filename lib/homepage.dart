import 'package:flutter/material.dart';

import 'class.dart';
import 'login.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "home page",
      home: Scaffold(
        appBar: AppBar(
          title: Text("home"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 87, 162, 203),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),

            //log out button

            IconButton(
                onPressed: () {
                  A.setUser(false);
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ));
                },
                icon: Icon(Icons.logout_outlined)),
          ],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(4))),
          elevation: 10,
        ),

        //drawer

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 87, 162, 203)),
                accountName: Text("Bibin_KB"),
                accountEmail: Text("bibinkochumalayil007@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/bbn.jpeg'),
                ),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                iconColor: Colors.black54,
                title: Text("Profile"),
                textColor: Colors.black,
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.schedule),
                iconColor: Colors.black54,
                title: Text("Your activity"),
                textColor: Colors.black,
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.bookmark),
                iconColor: Colors.black54,
                title: Text("Saved"),
                textColor: Colors.black,
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.star),
                iconColor: Colors.black54,
                title: Text("Close friends"),
                textColor: Colors.black,
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.person_add),
                iconColor: Colors.black54,
                title: Text("Discover people"),
                textColor: Colors.black,
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                iconColor: Colors.black54,
                title: Text("favorites"),
                textColor: Colors.black,
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                iconColor: Colors.black54,
                title: Text("Settings"),
                textColor: Colors.black,
                onTap: () {},
              ),
            ],
          ),
        ),

        //home image cards

        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                elevation: 10,
                child: Column(children: [
                  ListTile(
                    title: Text("Bibin_kB"),
                    subtitle: Text("2 minutes ago..."),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('images/bbn.jpeg'),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    title: Text(
                        "Set your goals high, and don't stop till you get there."),
                    subtitle: Text("#brototype calicut"),
                  ),
                  Image.asset('images/kinfraaa.jpeg'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.thumb_up_outlined)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                      Spacer(),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.bookmark_outline)),
                    ],
                  )
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                elevation: 10,
                child: Column(children: [
                  ListTile(
                    title: Text("killer_elite"),
                    subtitle: Text("5 minutes ago..."),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('images/killer.jpeg'),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    title: Text("santa cruz basalica  "),
                    subtitle: Text("#kochi india"),
                  ),
                  Image.asset('images/pally.jpeg'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.thumb_up_outlined)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                      Spacer(),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.bookmark_outline)),
                    ],
                  )
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                elevation: 10,
                child: Column(children: [
                  ListTile(
                    title: Text("ebin_thoma"),
                    subtitle: Text("8 minutes ago..."),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('images/eby.jpg'),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    title: Text("secret heaven nature camps"),
                    subtitle: Text("#mannarkkad india"),
                  ),
                  Image.asset('images/heaven.jpeg'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.thumb_up_outlined)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                      Spacer(),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.bookmark_outline)),
                    ],
                  )
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                elevation: 10,
                child: Column(children: [
                  ListTile(
                    title: Text("Iam-sarun_07"),
                    subtitle: Text("10 minutes ago..."),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('images/sarun.jpg'),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    title: Text(" club cabana amusement park banglore "),
                    subtitle: Text("#bangloore india"),
                  ),
                  Image.asset('images/bnglore.jpg'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.thumb_up_outlined)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                      Spacer(),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.bookmark_outline)),
                    ],
                  )
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                elevation: 10,
                child: Column(children: [
                  ListTile(
                    title: Text("jomon_vadakkedath"),
                    subtitle: Text("12 minutes ago..."),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('images/jomon.jpg'),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    title: Text(" welcom to ooty , nice to meet you ! "),
                    subtitle: Text("#queen of hills ooty,coonoor"),
                  ),
                  Image.asset('images/ooty.jpeg'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.thumb_up_outlined)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                      Spacer(),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.bookmark_outline)),
                    ],
                  )
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                elevation: 10,
                child: Column(children: [
                  ListTile(
                    title: Text("jinson_jc"),
                    subtitle: Text("22 minutes ago..."),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('images/jinson.jpg'),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    title: Text(" wayanad banasura sagar dam "),
                    subtitle: Text("#wayanad india"),
                  ),
                  Image.asset('images/wayn.jpeg'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.thumb_up_outlined)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                      Spacer(),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.bookmark_outline)),
                    ],
                  )
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                elevation: 10,
                child: Column(children: [
                  ListTile(
                    title: Text("epic_travellr"),
                    subtitle: Text("1 day ago..."),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('images/subinks.jpeg'),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    title: Text(
                        "Good company on a journey makes the way seem shorter."),
                    subtitle: Text("#mysore palace , mysore india"),
                  ),
                  Image.asset('images/mysore.jpeg'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.thumb_up_outlined)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                      Spacer(),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.bookmark_outline)),
                    ],
                  )
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                elevation: 10,
                child: Column(children: [
                  ListTile(
                    title: Text("jinesh_rjn"),
                    subtitle: Text("2 days ago..."),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('images/jinesh.jpg'),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    title: Text("United arab emirates"),
                    subtitle: Text("#dubai expo2023"),
                  ),
                  Image.asset('images/expo.jpg'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.thumb_up_outlined)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                      Spacer(),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.bookmark_outline)),
                    ],
                  )
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
