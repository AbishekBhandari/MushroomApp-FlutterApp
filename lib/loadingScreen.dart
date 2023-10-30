import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mushroom/navbar.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 4)).then((value) {
      Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (ctx)=> navBar()));

    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/loadingScreen.jpg'),
                    fit : BoxFit.cover,
                  ),
              ),
            ),
            Positioned(
                child:  Text(
                    'Shroom World',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                ),
                top: 200.0,
                left: 40
            ),
            Positioned(
              child: SpinKitFadingCircle(
                color: Colors.black,
                size: 80.0,
              ),
              top: MediaQuery.of(context).size.height/2 ,
              left: MediaQuery.of(context).size.width/2 - 18,
            )
          ],
        ),
    );
  }
}
