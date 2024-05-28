import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    test();
  }


  Future<void> test() async{
    var sp=await SharedPreferences.getInstance();
    sp.setString("string","string");
    sp.setBool("bool", true);
    sp.setInt("int", 1);
    sp.setDouble("double",1.4);

    var lst=<String>[];
    lst.add("lst1");
    lst.add("lst2");
    sp.setStringList("lst", lst);

    print(sp.get("double"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("S Pref"),),
      body: Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Açılış Sayısı")
          ],
        ),
      ),
    );
  }
}
