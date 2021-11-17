import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:videoplayer/utils/colors.dart' as color;

class VideoInfo extends StatefulWidget {
  const VideoInfo({Key? key}) : super(key: key);

  @override
  _VideoInfoState createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {
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
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors:[
                  color.AppColor.gradientFirst.withOpacity(.99),
                  color.AppColor.gradientSecond.withOpacity(.99),
                ],
                    begin: const FractionalOffset(0.0, 0.4),
                      end: Alignment.topRight,

            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 70,right: 30,left: 30),
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.arrow_back_ios,size: 20,color: color.AppColor.secondPageIconColor,),
                        Expanded(child: Container()),
                        Icon(Icons.info_outline,color: color.AppColor.secondPageIconColor,size: 20,),
                      ],),
                    const SizedBox(height: 30,),
                    Text(
                      "Legas Toning",style: TextStyle(color: color.AppColor.secondPageTitleColor,
                      fontSize: 25,
                    ),
                    ),
                    const SizedBox(height: 8,),
                    Text(
                      "and Glutes Workout",style: TextStyle(color: color.AppColor.secondPageTitleColor,
                      fontSize: 25,
                    ),
                    ),
                    Row(
                      children: [
                        SizedBox(height: 100,),
                        Container(
                          height: 30,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  colors: [
                                    color.AppColor.secondPageContainerGradient1stColor,
                                    color.AppColor.secondPageContainerGradient2ndColor,
                                  ]
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.access_time_rounded,size: 20,color: color.AppColor.secondPageIconColor,),
                              Text(" 60 min",style: TextStyle(color: color.AppColor.secondPageIconColor,),),
                            ],
                          ),
                        ),
                        SizedBox(width: 30,),
                        Container(
                          height: 30,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                colors: [
                                  color.AppColor.secondPageContainerGradient1stColor,
                                  color.AppColor.secondPageContainerGradient2ndColor,
                                ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,

                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: 10,),
                              Icon(Icons.handyman_outlined,size: 20,color: color.AppColor.secondPageIconColor,),
                              Text(" Resistant band, kettble",style: TextStyle(color: color.AppColor.secondPageIconColor,),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:BorderRadius.only(topRight: Radius.circular(50))
                    ),
                    child:Column(
                      children: [
                        Row(
                          children: [
                            const SizedBox(height: 70,width: 15,),
                            Text("Circuit 1, Legs Toning",style:
                            TextStyle(color:color.AppColor.circuitsColor,fontSize: 20,
                            fontWeight: FontWeight.w700,
                            ),),
                            Expanded(child: Container()),
                            Icon(Icons.loop,size: 30,color: color.AppColor.loopColor,),
                            Text("3 sets",style: TextStyle(color:color.AppColor.setsColor ),),
                            const SizedBox(width: 20,),
                          ],
                        )
                      ],
                    ) ,
                  )
              )

            ],
          ),
        ),
    );
  }
}
