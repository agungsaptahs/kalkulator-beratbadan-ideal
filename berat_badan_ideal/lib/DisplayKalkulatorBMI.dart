import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class DisplayKalkulatorBMI extends StatefulWidget {
  @override
  _DisplayKalkulatorBMIState createState() => _DisplayKalkulatorBMIState();
}

class _DisplayKalkulatorBMIState extends State<DisplayKalkulatorBMI> {
 double tinggiuser = 100.0;
 double beratuser = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                child: SvgPicture.asset("assets/images/like.svg", fit: BoxFit.contain,),
              ),
              SizedBox(
                height: 8,
              ),
              Text("Kalkulator Berat Badan Ideal", style: TextStyle(color: Colors.redAccent, fontSize: 25, fontWeight: FontWeight.w700),),
              Text("Kami Peduli Dengan Kesehatan Anda", style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w400),),
              SizedBox(
                height: 25,
              ),
              Text("Tinggi (cm)", style: TextStyle(color: Colors.grey, fontSize: 25, fontWeight: FontWeight.w500),),
              Container(
                padding: EdgeInsets.only(left: 10 , right: 10),
                child: Slider(
                  min: 50,
                  max: 200,
                  onChanged: (tinggi){
                    setState(() {
                      tinggiuser = tinggi;
                    });
                  },
                  value: tinggiuser,
                  divisions: 100,
                  activeColor: Colors.blueAccent,
                  label: "$tinggiuser",
                ),
              ),
              Text("$tinggiuser cm", style: TextStyle(color: Colors.black45, fontSize: 25, fontWeight: FontWeight.w400),),

              //batas slider tinggi
              SizedBox(
                height: 20,
              ),
              Text("Berat (kg)", style: TextStyle(color: Colors.grey, fontSize: 25, fontWeight: FontWeight.w500),),
              Container(
                padding: EdgeInsets.only(left: 10 , right: 10),
                child: Slider(
                  min: 30,
                  max: 140,
                  onChanged: (berat){
                    setState(() {
                      beratuser = berat;
                    });
                  },
                  value: beratuser,
                  divisions: 100,
                  activeColor: Colors.blueAccent,
                  label: "$beratuser",
                ),
              ),
              Text("$beratuser kg", style: TextStyle(color: Colors.black45, fontSize: 25, fontWeight: FontWeight.w400),),
            ],
          ),
        ),
      ),
    );
  }
}
