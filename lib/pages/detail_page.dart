import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:my_app/pages/home_page.dart';
class Counter extends StatefulWidget {
  static final String id = "/counter_page";
  const Counter({Key? key}) : super(key: key);
  @override
  State<Counter> createState() => _CounterState();
}
class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    String zikrOne = "SUBHANALLOH";
    String zikrTwo = "ALHAMDULILLAH";
    String zikrThree = "ALLOHU AKBAR";
    void sanaO() {
      Navigator.of(context).pop(zikrOne);
      sana = 0;
    }
    void sanaT() {
      Navigator.of(context).pop(zikrTwo);
      sana = 0;
    }
    void sanaTh() {
      Navigator.of(context).pop(zikrThree);
      sana = 0;
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.black87,
        title: Text('ZIKRLAR', style: TextStyle(fontStyle: FontStyle.italic,fontSize: 30),),
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/image/ic.masjidphoto.jpg"),
              fit: BoxFit.cover
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                onPressed: sanaO,
                color: Colors.lightGreen,
                child: Text(zikrOne,
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 35),),
                textColor: Colors.black87,
                splashColor: Colors.lime,
                shape: StadiumBorder(),
                height: 60,
                minWidth: 40,
              ),
              MaterialButton(
                onPressed: sanaT,
                color: Colors.lightGreen,
                child: Text(zikrTwo,
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 35),),
                textColor: Colors.black87,
                splashColor: Colors.amber,
                shape: StadiumBorder(),
                height: 60,
                minWidth: 40,
              ),
              MaterialButton(
                onPressed: sanaTh,
                color: Colors.lightGreen,
                child: Text(zikrThree,
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 35),),
                textColor: Colors.black87,
                splashColor: Colors.brown,
                shape: StadiumBorder(),
                height: 60,
                minWidth: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
