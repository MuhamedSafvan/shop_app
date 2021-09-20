import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:google_language_fonts/google_language_fonts.dart';
import './pages/frontPage.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String logo = 'http://omanphone.smsoman.com/api/media/omanphone_icon.png';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: AppBar(
            title: Container(
              // height: 50,
              margin: EdgeInsets.symmetric(vertical: 100),
              // color: Colors.purple,
              // height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    width: 40,
                    child: Image.network(
                      logo,
                      height: 50,
                      color: Colors.white,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.values[0],
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'عمان فون',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Changa',
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        'OMAN PHONE',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            height: 0.3),
                      )
                    ],
                  ),
                ],
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications),
              )
            ],
            bottom: SearchBar(),
          ),
        ),
        bottomNavigationBar: menu(),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('User'),
                accountEmail: Text('user@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        body: FrontPage(),
      ),
    );
  }
}

Widget menu() {
  return Container(
    child: TabBar(
      labelColor: Colors.red,
      unselectedLabelColor: Colors.black54,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorPadding: EdgeInsets.all(5.0),
      indicatorColor: Colors.blue,
      tabs: [
        Tab(
          text: "Home",
          icon: Icon(Icons.home),
        ),
        Tab(
          text: "Search",
          icon: Icon(Icons.search),
        ),
        Tab(
          text: "Categories",
          icon: Icon(Icons.apps),
        ),
        Tab(
          text: "Cart",
          icon: Icon(Icons.shopping_cart_outlined),
        ),
      ],
    ),
  );
}

class SearchBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 450,
      margin: EdgeInsets.all(6),
      child: TextField(
        autofocus: false,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: 'Search products...',
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black38,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(10)),
            hoverColor: Colors.white),
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
