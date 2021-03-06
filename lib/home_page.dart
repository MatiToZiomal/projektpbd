import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors.dart' as color;
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top:70, left:30,right: 30),
        child: Column(
          children: [
            Row(
              children:  [
                Text(
                  "SZY BY",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w700
                  ),
                ),
                Expanded(child: Container()),
                Icon(Icons.arrow_back_ios,
                size: 20,
                  color: color.AppColor.homePageIcons),
                SizedBox(width: 10,),
                Icon(Icons.work_outlined,
                size: 20,
                color: color.AppColor.homePageIcons),
                SizedBox(width: 15,),
                Icon(Icons.arrow_forward_ios,
                    size: 20,
                    color: color.AppColor.homePageIcons),

              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Text(
                  "Witaj",
                  style: TextStyle(
                      fontSize: 20,
                      color: color.AppColor.homePageSubtitle,
                      fontWeight: FontWeight.w700
                  ),
                ),
                Expanded(child: Container()),
                Text(
                  "Profil",
                  style: TextStyle(
                      fontSize: 20,
                      color: color.AppColor.homePageDetail,
                  ),
                ),
                SizedBox(width: 5,),
                Icon(Icons.arrow_forward_ios,
                size: 20,
                color:color.AppColor.homePageIcons)
              ],
            ),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    color.AppColor.gradientFirst.withOpacity(0.8),
                    color.AppColor.gradientSecond.withOpacity(0.9),
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.centerRight
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(80)
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(5,10),
                    blurRadius: 20,
                    color: color.AppColor.gradientSecond.withOpacity(0.2)
                  )
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
