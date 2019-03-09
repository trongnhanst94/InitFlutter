import 'package:flutter/material.dart';
import 'package:init_flutter/screens/home.dart';

class YoutubeMain extends StatefulWidget {
  final Widget child;

  YoutubeMain({Key key, this.child}) : super(key: key);

  _YoutubeMainState createState() => _YoutubeMainState();
}

class _YoutubeMainState extends State<YoutubeMain> {

  int _currentIndex = 0;

  _onTapped(int idx){
    setState(() {
      _currentIndex = idx; 
    });
  }

  @override
  Widget build(BuildContext context) {

    List<Widget> _screens = [
      HomeScreen(),
      Center(child: Text('Trending')),
      Center(child: Text('Subcriptions')),
      Center(child: Text('Inbox')),
      Center(child: Text('Library')),
    ];


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey),
        title: Image.asset('assets/images/youtube_logo.png', width: 98, height: 22),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.videocam)),
          IconButton(icon: Icon(Icons.search)),
          IconButton(icon: Icon(Icons.account_circle)),
        ],
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTapped,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        items: [
          BottomNavigationBarItem(title: Text("Home"), icon: Icon(Icons.home)),
          BottomNavigationBarItem(title: Text("Trending"), icon: Icon(Icons.whatshot)),
          BottomNavigationBarItem(title: Text("Subcriptions"), icon: Icon(Icons.subscriptions)),
          BottomNavigationBarItem(title: Text("Inbox"), icon: Icon(Icons.mail)),
          BottomNavigationBarItem(title: Text("Library"), icon: Icon(Icons.folder))
        ],
      ),
    );
  }
}