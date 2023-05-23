import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
    Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xFF26CBE6),
              Color(0xFF26CBC0),
            ], begin: Alignment.topCenter, end: Alignment.center)),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: _height / 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage:
                              const AssetImage('assets/images/asp.png'),
                          radius: _height / 10,
                        ),
                        SizedBox(
                          height: _height / 30,
                        ),
                        const Text(
                          'Asep Herbasuki',
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: _height / 2.2),
                  child: Container(
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: _height / 2.6,
                      left: _width / 20,
                      right: _width / 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black45,
                                  blurRadius: 2.0,
                                  offset: Offset(0.0, 2.0))
                            ]),
                        child: Padding(
                          padding: EdgeInsets.all(_width / 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                headerChild('Photos', 1),
                                headerChild('Followers', 100),
                                headerChild('Following', 50),
                              ]),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: _height / 20),
                        child: Column(
                          children: <Widget>[
                            infoChild(
                                _width, Icons.email, 'asp.shinichi@gmail.com'),
                            infoChild(_width, Icons.call, '+62 813-9436-9436'),
                            infoChild(
                                _width, Icons.group_add, 'Add to group'),
                            infoChild(_width, Icons.chat_bubble,
                                'Show all comments'),
                            Padding(
                              padding: EdgeInsets.only(top: _height / 30),
                              child: Container(
                                width: _width / 3,
                                height: _height / 20,
                                decoration: BoxDecoration(
                                    color: const Color(0xFF26CBE6),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(_height / 40)),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black87,
                                          blurRadius: 2.0,
                                          offset: Offset(0.0, 1.0))
                                    ]),
                                child: const Center(
                                  child: Text('FOLLOW ME',
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
    Widget headerChild(String header, int value) => Expanded(
          child: Column(
        children: <Widget>[
          Text(header),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            '$value',
            style: const TextStyle(
                fontSize: 14.0,
                color: Color(0xFF26CBE6),
                fontWeight: FontWeight.bold),
          )
        ],
      ));

 Widget infoChild(double width, IconData icon, data) => Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: InkWell(
          child: Row(
            children: <Widget>[
              SizedBox(
                width: width / 10,
              ),
              Icon(
                icon,
                color: const Color(0xFF26CBE6),
                size: 36.0,
              ),
              SizedBox(
                width: width / 20,
              ),
              Text(data)
            ],
          ),
          onTap: () {
            print('Info Object selected');
          },
        ),
      );

}


