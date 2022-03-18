import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OTPControllerScreen extends StatefulWidget
{
  final String phone;
  final String codeDigits;
 // videoda okuyor sende neden okumuyor bilmiyorum bir kontrol et 15.46da kaldın :*
  OTPControllerScreen({required this.phone, required this.codeDigits});

  @override
  _OTPControllerScreenState createState() => _OTPControllerScreenState();
}

class _OTPControllerScreenState extends State<OTPControllerScreen>
{
  final GlobalKey<ScaffoldState> _scaffolkey = GlobalKey<ScaffoldState>();
  final TextEditingController _pinOTPCodeController = TextEditingController();
  final FocusNode pinOTPCodeFocus = FocusNode();
  String? varificationCode;

  final BoxDecoration pinOTPCodeDecoration = BoxDecoration(
      color: Colors.blueAccent,
    borderRadius: BorderRadius.circular(10.0),
    border: Border.all(
      color: Colors.grey
    )
  );



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffolkey,
      appBar: AppBar(
        title: Text('OTP Verification')
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/otp.jpg"),
          ),

          Container(
              margin: EdgeInsets.only(top: 20),
              child: Center(
              child: GestureDetector(
              onTap: (){

              },
              child: Text(
              "Verifying : ${widget.codeDigits}-${widget.phone}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
          ),
          ),
          ),





        ],
      ) ,
    );
  }
}
