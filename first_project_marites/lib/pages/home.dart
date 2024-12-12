import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () { },
        ),
        actions: <Widget>[
          IconButton(
            icon:Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: (){},
          )
        ],
        bottom: PreferredSize(
          child: Container (
            color: Colors.lightGreen.shade100,
            height: 75.0,
            width: double.infinity,
            child: Center(
              child: Text('Bottom'),
            ),
          ),
          preferredSize: Size.fromHeight(75.0),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                _buildHorizontalRow(),
                Padding(padding: EdgeInsets.all(16.0),),
                _buildRowAndColumn(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row _buildRowAndColumn() {
    return Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                        color: Colors.amber,
                        height: 60.0,
                        width: 60.0,
                      ),
                      Padding(padding: EdgeInsets.all(16.0),),
                      Container(
                        color: Colors.lightBlue,
                        height: 40.0,
                        width: 40.0,
                      ),
                      Padding(padding: EdgeInsets.all(16.0),),
                      Container(
                        color: Colors.lime,
                        height: 20.0,
                        width: 20.0,
                      ),
                      Divider(),
                      _buildRowAndStack(),
                      Divider(),
                      Text('End of the Line')
                    ],
                  ),
                ],
    );
  }

  Row _buildRowAndStack() {
    return Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.cyan,
                            radius: 100.0,
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  height: 100.0,
                                  width: 100.0,
                                  color: Colors.pinkAccent,
                                ),
                                Container(
                                  height: 60.0,
                                  width: 60.0,
                                  color: Colors.teal,
                                ),
                                Container(
                                  height: 40.0,
                                  width: 40.0,
                                  color: Colors.grey,
                                )
                              ],
                            ),
                          ),
                        ],
    );
  }

  Row _buildHorizontalRow() {
    return Row(
                children: <Widget>[
                  Container(
                    color: Colors.purple,
                    height: 40.0,
                    width: 40.0,
                  ),
                  Padding(padding: EdgeInsets.all(16.0),),
                  Expanded(
                    child: Container(
                      color: Colors.deepPurpleAccent,
                      height: 40.0,
                      width: 40.0,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(16.0),),
                  Container(
                    color: Colors.blue,
                    height: 40.0,
                    width: 40.0,
                  ),
                ],
    );
  }
}