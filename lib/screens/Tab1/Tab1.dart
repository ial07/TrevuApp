import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trevu_app/common/myColors.dart';

class Tab1 extends StatelessWidget {
  const Tab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Positioned(
          top: 0,
          child: Container(
            color: MyColors.greenAccent,
            width: size.width,
            height: size.height * .35,
            child: Padding(
              padding: EdgeInsets.only(
                  top: size.height * .10, left: size.width * .07),
              child: Row(
                children: [
                  Text(
                    "HI, ",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "ILHAM ALMALIK",
                    style: TextStyle(fontSize: 30, fontFamily: 'geomanistBold'),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: size.height * .25,
          left: 15,
          right: 15,
          child: Card(
            elevation: 8,
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
              width: size.height * .90,
              height: 150,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Next Prayer Time",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "15:12",
                          style: TextStyle(
                            fontSize: 50,
                            fontFamily: 'geomanistBlack',
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 100,
                      width: 2,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "VIEW MORE",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'geomanistBold'),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
