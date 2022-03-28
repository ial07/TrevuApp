import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trevu_app/common/myColors.dart';

class Tab4 extends StatelessWidget {
  const Tab4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double mediaQueryHeight = MediaQuery.of(context).size.height;
    double mediaQueryWidth = MediaQuery.of(context).size.width;
    final myAppBar = AppBar(
      backgroundColor: MyColors.blueAccent,
    );

    double bodyHeight = mediaQueryHeight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: MyColors.blueAccent, boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10,
                  offset: const Offset(5, 5)),
            ]),
            height: mediaQueryHeight * 0.27,
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(left: 20, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Profile',
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontFamily: 'geomanistBlack'),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                              width: 2, color: Colors.white.withOpacity(0.8)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 20,
                                offset: const Offset(5, 5)),
                          ],
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://picsum.photos/200/300?grayscale"),
                              fit: BoxFit.cover)),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ILHAM ALMALIK",
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'geomanistBold',
                                color: Colors.white),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "email : a212113123123",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(color: MyColors.blueAccent, boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10,
                  offset: const Offset(5, 5)),
            ]),
            height: mediaQueryHeight * 0.20,
          )
        ],
      ),
    );
  }
}
