import 'package:flutter/material.dart';

final List<String> entries = <String>['Haris Khan', 'Wahaj forgot his last name', 'Shahbaz Hasan Khan'];
final List<String> colorCodes = <String>['My friend dated him and he was such an asshole that i wanted to tell the world about him but that was too scary so instead i was inspired to make an app on a technology ive never used before just to tell the world how shitty he is', 'Irrelevant, money wasting, daddies princess cant handle women being smarter than him and talking back to him. Trys to exude testosterone vibes and will flirt with anything that looks even remotely female. His standards are as lowely as him', 'lying pig with zero self respect. pathelogical liar that uses pity to lure women into feeling sorry for him and in turn treating him like a damaged and broken baby bird'];

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kachara Kundi',
      theme: ThemeData(
        canvasColor: Colors.red[900],
      ),

      home: Scaffold(
        appBar: AppBar(
          title: Text('Kachara Kundi'),
           backgroundColor: Colors.red[900],
        ),

        body:
        ListView.builder(
            padding: const EdgeInsets.all(5),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return new Column(

                  mainAxisAlignment: MainAxisAlignment.start,

                  children: <Widget>[
                    Center( child : Container(
                      decoration: new BoxDecoration(
                          color: Colors.white70,
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(7.0),
                            topRight: const Radius.circular(7.0),
                          )
                      ),
                      margin: EdgeInsets.only(top: 4),

                      height: MediaQuery.of(context).size.width * 0.05,
                      width: MediaQuery.of(context).size.width * 0.98,
                      padding:const EdgeInsets.all(1) ,
                      child:  Text(
                        '~'+entries[index],

                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 14.0),

                      ),
                    ),
                    ),

                    Center( child : Container(
                      decoration: new BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.only(
                            bottomLeft: const Radius.circular(7.0),
                            bottomRight: const Radius.circular(7.0),
                          )
                      ),
                      height: MediaQuery.of(context).size.width * 0.20,
                      width: MediaQuery.of(context).size.width * 0.98,
                      padding:const EdgeInsets.all(5) ,
                      child:  Text(

                          colorCodes[index],
                          style: TextStyle(fontSize: 13.0),
                          textAlign: TextAlign.start
                      ),
                    )
                    ),

                  ]
              );
            }
        ),
      ),
    ),
  );
}





class HelloRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(

        mainAxisAlignment: MainAxisAlignment.start,

        children: <Widget>[
          Center( child : Container(
            margin: EdgeInsets.only(top: 4),
            color: Colors.greenAccent,
            height: MediaQuery.of(context).size.width * 0.05,
            width: MediaQuery.of(context).size.width * 0.98,
            child:  Text(
                '~Haris Khan',

                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 14.0),

              ),
            ),
            ),

          Center( child : Container(
            color: Colors.redAccent,
            height: MediaQuery.of(context).size.width * 0.20,
            width: MediaQuery.of(context).size.width * 0.98,
            child:  Text(
                'My friend dated him and he was such an asshole that i wanted to tell the world about him but that was too scary so instead i was inspired to make an app on a technology ive never used before just to tell the world how shitty he is',
              style: TextStyle(fontSize: 13.0),
              textAlign: TextAlign.start
            ),
          )
          ),

        ]
    );
  }
}
