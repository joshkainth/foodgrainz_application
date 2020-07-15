import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';

class FoodGrainzApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FoodGrainz - You Cook, We Deliver",
      theme: ThemeData(
          primaryColor: Colors.red[500],
          primaryColorLight: Colors.yellow[300],
          primaryIconTheme: IconThemeData(color: fromCSSColor("#CC2F2F"))),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "FoodGrainz",
          style: TextStyle(fontSize: 24, fontFamily: 'DenkOne', shadows: [
            Shadow(
                color: Colors.grey, blurRadius: 5.0, offset: Offset(5.0, 5.0))
          ]),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).primaryColorLight
                ]),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset(
              "assets/iconsImages/cart.png",
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset(
              "assets/iconsImages/search.png",
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: SideNavigationOptions(),
      ),
      body: Center(
        child: Text("Testing"),
      ),
    );
  }
}

class SideNavigationOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).primaryColorLight
                ]),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                "username",
                style: TextStyle(
                    fontSize: 26, fontFamily: 'DenkOne', color: Colors.white),
              ),
              Text("email address/phone number",
                  style: TextStyle(
                      fontSize: 20, fontFamily: 'DenkOne', color: Colors.white))
            ],
          ),
        ),
        ListTile(
          leading: Image.asset(
            "assets/iconsImages/userAccount.png",
            width: 29.19,
            height: 29.35,
          ),
          title: Text("Account Settings",
              style: TextStyle(fontSize: 20, fontFamily: 'DaysOne')),
        ),
        ListTile(
          leading: Image.asset(
            "assets/iconsImages/favourites.png",
            width: 29.19,
            height: 29.35,
          ),
          title: Text("Favourites",
              style: TextStyle(fontSize: 20, fontFamily: 'DaysOne')),
        ),
        ListTile(
          leading: Image.asset(
            "assets/iconsImages/history (1).png",
            width: 29.19,
            height: 29.35,
          ),
          title: Text("Order History",
              style: TextStyle(fontSize: 20, fontFamily: 'DaysOne')),
        ),
        ListTile(
          leading: Image.asset(
            "assets/iconsImages/tracking.png",
            width: 29.19,
            height: 29.35,
          ),
          title: Text("Track Order",
              style: TextStyle(fontSize: 20, fontFamily: 'DaysOne')),
        ),
        ListTile(
          leading: Image.asset(
            "assets/iconsImages/settings.png",
            width: 29.19,
            height: 29.35,
          ),
          title: Text("Settings",
              style: TextStyle(fontSize: 20, fontFamily: 'DaysOne')),
        ),
        ListTile(
          leading: Image.asset(
            "assets/iconsImages/feedback.png",
            width: 29.19,
            height: 29.35,
          ),
          title: Text("Feedback",
              style: TextStyle(fontSize: 20, fontFamily: 'DaysOne')),
        ),
        ListTile(
          leading: Image.asset(
            "assets/iconsImages/terms-and-conditions.png",
            width: 29.19,
            height: 29.35,
          ),
          title: Text("Terms & Conditions",
              style: TextStyle(fontSize: 20, fontFamily: 'DaysOne')),
        ),
        ListTile(
          leading: Image.asset(
            "assets/iconsImages/contact-us.png",
            width: 29.19,
            height: 29.35,
          ),
          title: Text("Contact Us",
              style: TextStyle(fontSize: 20, fontFamily: 'DaysOne')),
        ),
      ],
    );
  }
}
