
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0XFFEDEDED),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0XFFEDEDED),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/Ellipse.png"),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi Firdavs",
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 11,
                  fontWeight: FontWeight.w600
                ),
              ),

              Text(
                "Let's save your money!",
                style: TextStyle(
                  color: Color(0XFF1C1D36),
                  fontWeight: FontWeight.w700,
                  fontSize: 11,
                ),
              ),
            ],
          ),
          actions: [
            SvgPicture.asset('assets/SVG/notiffication.svg'),
            SizedBox(width: 16,)

          ],
        ),

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16,left: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your balance',
                    style: TextStyle(
                      color: Color(0XFFB0AAAA),
                      fontSize: 14,
                      fontWeight: FontWeight.w500
                    ),
                  ),

                  Text(
                    r"$926.21",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        fontSize: 32
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 23,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyIcon(url: 'assets/SVG/send.svg', name: 'Send',),
                MyIcon(url: 'assets/SVG/qr_scan.svg', name: 'QR scan',),
                MyIcon(url: 'assets/SVG/humo.svg', name: 'Pay',),
                MyIcon(url: 'assets/SVG/more.svg', name: 'More',)

              ],
            ),

            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, top: 17),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            MyCards(text: 'Hamkor bank\n**** 5547', first_color: Color(0xff000000), second_color: Color(0xff5D00FF)),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(height: 54,),
                            MyCards(text: 'Hamkor bank\n**** 5675', first_color: Color(0xff8F4A80), second_color: Color(0xff5D00FF)),
                          ],
                          
                        ),
                        Column(
                          children: [
                            SizedBox(height: 54*2,),
                            MyCards(text: 'Hamkor bank', first_color: Color(0xff03CAFF), second_color: Color(0xff5D00FF)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }

}

