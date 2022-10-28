import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardList extends StatefulWidget {
  final data;
 
  CardList({
    Key? key,
   
    this.data,
    
  }) : super(key: key);

  @override
  State<CardList> createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  bool isactive = true;
  handletap() {
    setState(() {
      isactive = !isactive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8.h),
      padding: EdgeInsets.all(8.0.h),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25.h),
            child: Image(
              image: AssetImage(widget.data.mainImg),
              fit: BoxFit.fill,
              height: 330.h,
            ),
          ),
          Container(
            height: 330.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.h),
              color: Colors.black.withOpacity(0.3),
            ),
          ),
          Positioned(
            top: 10.h,
            left: 10.w,
            right: 10.w,
            child: Container(
              width: 320.w,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(widget.data.circleImg),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children:  [
                              Text(
                                "${widget.data.label} ",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300),
                              ),
                              Text(
                                widget.data.rlabel,
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          SizedBox(height: 2.h,),
                          Text(
                            widget.data.tlabel,
                            style:  TextStyle(color: Colors.white, fontSize: 10.sp),
                          )
                        ],
                      )
                    ],
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                    size: 18.h,
                  )
                ],
              ),
            ),
          ),
          Positioned(
              top: 55.h,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5),
                        bottomRight: Radius.circular(5)),
                    color: widget.data.color),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Text(
                        "Trending New Home",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 8.sp,
                            letterSpacing: 1),
                      )
                    ],
                  ),
                ),
              )),
          Positioned.fill(
              
              left: !isactive ? 285.w : 320.w,
              child: GestureDetector(
                onTap: handletap,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.4),
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10))),
                      child:  !isactive
                          ? Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(11.0),
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 12.h,
                                        backgroundColor: const
                                            Color.fromRGBO(151, 158, 163, 1),
                                        child: const Icon(
                                          Icons.favorite,
                                          color: Colors.white,
                                          size: 14,
                                        ),
                                      ),
                                      Text(
                                        "25",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10.sp),
                                      ),
                                    const SizedBox(
                                        height: 5,
                                      ),
                                      CircleAvatar(
                                        radius: 12.h,
                                        backgroundColor: const
                                            Color.fromRGBO(151, 158, 163, 1),
                                        child: const Icon(
                                          Icons.share,
                                          color: Colors.white,
                                          size: 14,
                                        ),
                                      ),
                                      Text(
                                        "60",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10.sp),
                                      ),
                                     const SizedBox(
                                        height: 5,
                                      ),
                                      CircleAvatar(
                                        radius: 12.h,
                                        backgroundColor: const
                                            Color.fromRGBO(151, 158, 163, 1),
                                        child: const Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 14,
                                        ),
                                      ),
                                      Text(
                                        "60",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10.sp),
                                      ),
                                     const SizedBox(
                                        height: 5,
                                      ),
                                      CircleAvatar(
                                        radius: 12.h,
                                        backgroundColor: const
                                            Color.fromRGBO(151, 158, 163, 1),
                                        child: const Icon(
                                          Icons.chat,
                                          color: Colors.white,
                                          size: 14,
                                        ),
                                      ),
                                      Text(
                                        "60",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10.sp),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                    top: 60.h,
                                    child: Container(
                                        height: 40.h,
                                        width: 1.w,
                                        color: Colors.white))
                              ],
                            )
                          :  Container(
                              height: 190,
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child:  Column(
                                      children: const [
                                       
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                      top: 60.h,
                                      child: Container(
                                          height: 40.h,
                                          width: 1.w,
                                          color: Colors.white))
                                ],
                              ),
                            ),
                    ),
                  ],
                ),
              )),
          Positioned(
            top: 290,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.data.title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 320,
                  child: Text(widget.data.subtitle,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          height: 1.3,
                          letterSpacing: 0.6)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
