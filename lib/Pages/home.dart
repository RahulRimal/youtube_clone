import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget get _space
  {
    return SizedBox(
      width: 15.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
//        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            //---------------------Youtube Title-----------------------------
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      color: Colors.red,
                    ),
                    width: 40.0,
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'YouTube',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),

            //---------------------Action Buttons-----------------------------
            Container(
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.videocam,
                  ),
                  _space,
                  Icon(
                    Icons.search,
                  ),
                  _space,
                  Icon(
                    Icons.account_circle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('fkdjflkdfj'),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.values[
          10
        ],

//        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey[800],
        selectedItemColor: Colors.red,
        showUnselectedLabels: true,
        items: [

          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            title: Text('Home'),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text('Exploer'),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions),
            title: Text('Subscription'),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.mail,),
            title: Text('Inbox'),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.video_library,),
            title: Text('Library'),
          ),
        ],
      ),

    );
  }
}


class VideoInfoSection extends StatelessWidget {

  final String imgUrl, title, channelName, views, uploadedTime;

  VideoInfoSection({this.imgUrl, this.title, this.channelName, this.views, this.uploadedTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.network(imgUrl),
          Text(title),
          Text(channelName),
          Text(views),
          Text(uploadedTime),
        ],
      ),
    );
  }
}
