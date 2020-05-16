import 'package:ebook/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EBook',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme: Theme.of(context).textTheme.apply(
                displayColor: kBlackColor,
              )),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/Bitmap.png'),
          fit: BoxFit.fill,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                  style: Theme.of(context).textTheme.headline2,
                  children: [
                    TextSpan(text: 'flamin'),
                    TextSpan(
                        text: '.go',
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ]),
            ),
            RoundedButton(text: '开始阅读',verticalPadding: 16,horizontalPadding: 20,fontSize: 16,press: (){

            },)
          ],
        ),
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final double verticalPadding;

  final double horizontalPadding;

  final double fontSize;

  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.verticalPadding = 16,
    this.horizontalPadding = 20,
    this.fontSize = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press,
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
          padding: EdgeInsets.symmetric(vertical: verticalPadding, horizontal: horizontalPadding),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 15),
                    blurRadius: 30,
                    color: Color(0xff666666).withOpacity(.11))
              ]),
          child: Text(
            text,
            style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
