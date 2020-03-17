import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';


//自定义轮播组件
class SwiperBanner extends StatefulWidget {
  SwiperBanner({Key key}) : super(key: key);

  @override
  _SwiperBannerState createState() => _SwiperBannerState();
}
class _SwiperBannerState extends State<SwiperBanner> {

  //轮播图片地址
  var imgList = [
    'images/banner1.jpeg',
    'images/banner2.jpeg',
    'images/banner3.jpeg',
    'images/banner4.jpeg',
    'images/banner5.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return new Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return new Image.asset(
                    imgList[index],
                    fit: BoxFit.fill,
                  );
                },
                itemCount: 5,
                itemWidth: 400.0,
                itemHeight: 200.0,
                autoplay: true,
                duration: 1000,
                autoplayDelay: 1000,
                pagination: new SwiperPagination(),
                autoplayDisableOnInteraction:false,
                layout: SwiperLayout.STACK
                //layout: SwiperLayout.STACK,
               // control: new SwiperControl(),
            );
  }
}