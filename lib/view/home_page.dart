import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:videoplayer/utils/colors.dart ' as color;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List info = [];
  _DataLoad() {
    return DefaultAssetBundle.of(context)
        .loadString("json/info.json")
        .then((value) {
      info = jsonDecode(value);
    });
  }

  @override
  void initState() {
    _DataLoad();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Training",
                  style: TextStyle(
                    color: color.AppColor.homePageTitle,
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                  ),
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.arrow_back_ios_rounded,
                  size: 20,
                  color: color.AppColor.homePageIcons,
                ),
                const SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.calendar_today_rounded,
                  size: 20,
                  color: color.AppColor.homePageIcons,
                ),
                const SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: color.AppColor.homePageIcons,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Your Program",
                  style: TextStyle(
                    color: color.AppColor.homePageSubtitle,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                Expanded(child: Container()),
                Text(
                  "Detail",
                  style: TextStyle(
                    color: color.AppColor.homePageDetail,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                const Icon(
                  Icons.arrow_forward,
                  size: 18,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3.5,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      color.AppColor.gradientFirst.withOpacity(0.8),
                      color.AppColor.gradientSecond.withOpacity(0.9),
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(80),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: color.AppColor.gradientSecond,
                      offset: const Offset(0, 3),
                      blurRadius: 10,
                    )
                  ]),
              child: Container(
                padding: const EdgeInsets.only(left: 20, top: 25, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Next Workout",
                      style: TextStyle(
                        color: color.AppColor.homePageContainerTextSmall,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Legas Toning",
                      style: TextStyle(
                        color: color.AppColor.homePageContainerTextSmall,
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "and Glutes Workout",
                      style: TextStyle(
                        color: color.AppColor.homePageContainerTextSmall,
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.timer,
                              size: 20,
                              color: color.AppColor.homePageContainerTextSmall,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              "60 min",
                              style: TextStyle(
                                color:
                                    color.AppColor.homePageContainerTextSmall,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Expanded(child: Container()),
                        Icon(
                          Icons.play_circle_fill,
                          size: 60,
                          color: color.AppColor.homePageContainerTextSmall,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 130,
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage("assets/card.png"),
                          fit: BoxFit.fill,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 40,
                            color:
                                color.AppColor.gradientSecond.withOpacity(0.4),
                            offset: const Offset(8, 10),
                          )
                        ]),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        right: 200, bottom: 5, left: 25, top: 10),
                    height: 110,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(
                        "assets/figure.png",
                      ),
                    )),
                  ),
                  Container(
                    height: 100,
                    width: double.maxFinite,
                    margin: const EdgeInsets.only(left: 150, top: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You are doing great",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: color.AppColor.homePageDetail,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: TextSpan(
                              text: "keep it up\n",
                              style: TextStyle(
                                fontSize: 16,
                                color: color.AppColor.homePagePlanColor,
                              ),
                              children: const [
                                TextSpan(text: "stick to your plan")
                              ]),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Area of focus",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: color.AppColor.homePageTitle),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            Expanded(
              child: OverflowBox(
                maxWidth: MediaQuery.of(context).size.width,
                child: MediaQuery.removePadding(
                  removeTop: true,
                  context: context,
                  child: ListView.builder(
                      itemCount: (info.length.toDouble() / 2).toInt(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        int a = 2 * index; //0,2
                        int b = 2 * index + 1; //1,3
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(bottom: 5),
                              margin: const EdgeInsets.only(
                                  left: 30, bottom: 15, top: 15),
                              height: 150,
                              width:
                                  (MediaQuery.of(context).size.width - 90) / 2,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: AssetImage(info[a]['img']),
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: color.AppColor.gradientSecond
                                          .withOpacity(0.1),
                                      blurRadius: 5,
                                      offset: const Offset(1, 1),
                                    ),
                                    BoxShadow(
                                      color: color.AppColor.gradientSecond
                                          .withOpacity(0.1),
                                      blurRadius: 5,
                                      offset: const Offset(-1, -1),
                                    ),
                                  ]),
                              child: Center(
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    info[a]["title"],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(bottom: 5),
                              margin: const EdgeInsets.only(
                                  left: 30, bottom: 15, top: 15),
                              height: 150,
                              width:
                                  (MediaQuery.of(context).size.width - 90) / 2,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: AssetImage(info[b]['img']),
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: color.AppColor.gradientSecond
                                          .withOpacity(0.1),
                                      blurRadius: 5,
                                      offset: const Offset(1, 1),
                                    ),
                                    BoxShadow(
                                      color: color.AppColor.gradientSecond
                                          .withOpacity(0.1),
                                      blurRadius: 5,
                                      offset: const Offset(-1, -1),
                                    ),
                                  ]),
                              child: Center(
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    info[b]["title"],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
