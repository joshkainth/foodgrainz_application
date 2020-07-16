import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';

class RecipeScreen extends StatefulWidget {
  RecipeScreen({Key key}) : super(key: key);
  _RecipeScreenState createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  bool _isButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Recipes",
              style: TextStyle(fontSize: 24, fontFamily: 'DenkOne', shadows: [
                Shadow(
                    color: Colors.black45,
                    blurRadius: 6.0,
                    offset: Offset(5.0, 5.0))
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
            bottom: TabBar(
              indicatorColor: fromCSSColor("#CC2F2F"),
              indicatorWeight: 0.1,
              labelColor: Colors.yellow,
              unselectedLabelColor: Colors.white,
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    "Trending",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "DaysOne",
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Veg Food",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "DaysOne",
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Non-Veg Food",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "DaysOne",
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Snacks",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "DaysOne",
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Deserts",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "DaysOne",
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            physics: ScrollPhysics(),
            children: <Widget>[
              Center(
                child: Text(
                  "Trending",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "DaysOne",
                  ),
                ),
              ),
              Center(
                  child: Text(
                "Veg Food",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "DaysOne",
                ),
              )),
              Center(
                  child: Text(
                "Non-Veg Food",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "DaysOne",
                ),
              )),
              Center(
                  child: Text(
                "Snacks",
                style: TextStyle(fontSize: 16, fontFamily: "DaysOne"),
              )),
              Center(
                child: Text(
                  "Deserts",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "DaysOne",
                  ),
                ),
              )
            ],
          ),
          floatingActionButton: SizedBox(
            height: 64,
            width: 64,
            child: Ink(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Theme.of(context).primaryColor,
                        Theme.of(context).primaryColorLight
                      ])),
              child: IconButton(
                icon: Icon(
                  Icons.chat,
                  size: 32,
                  color: Colors.white,
                ),
                tooltip: "Char with BOTs",
                onPressed: () {},
              ),
            ),
          )),
    );
  }
}
