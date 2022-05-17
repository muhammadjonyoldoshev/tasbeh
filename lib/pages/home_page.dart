import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'detail_page.dart';
class Screen extends StatefulWidget {
  static final String id = "screen_page";
  const Screen({Key? key}) : super(key: key);
  @override
  State<Screen> createState() => _ScreenState();
}
 int sana = 0;
class _ScreenState extends State<Screen> {
  String? result = '=>';
  Future<void> openNext() async {
    String? value = await Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Counter()));
    setState(() {
      result = value;
    });
    print(result);
  }
  int qoshish() {
    setState(() {
      sana++;
      if (sana == 33) {
        sana = 0;
        // openNext();
      }
    });
    return sana;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.black87,
        title: Text(
          'TASBEH',
          style: TextStyle(fontStyle: FontStyle.italic, fontSize: 35),
        ),
        backgroundColor: Colors.lightGreen,
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(10),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/image/ic.tasb.soat.gold.jpg"),
                  fit: BoxFit.fill)),
          child: Column(
            children: [
              Text(
                "$sana",
                style: const TextStyle(
                  fontSize: 65,
                  color: Colors.blue,
                ),
              ),
              Column(
                children: const [],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 350, 0, 5),
                child: MaterialButton(
                  minWidth: 60,
                  height: 30,
                  shape: StadiumBorder(),
                  highlightColor: Colors.blue,
                  onPressed: openNext,
                  child: Text(' => '),
                  color: Colors.green,
                ),
              ),
              Container(
                child: MaterialButton(
                  color: Colors.lightGreen,
                  textColor: Colors.black,
                  shape: const StadiumBorder(),
                  height: 50,
                  minWidth: 30,
                  child: Text('BOSHLANG $result'),
                  onPressed: qoshish,
                  onLongPress: openNext,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
