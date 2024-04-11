import 'package:academy_app/extensions/theme_x.dart';
import 'package:academy_app/screen/course_detail.dart';
import 'package:academy_app/screen/register_course.dart';
import 'package:flutter/material.dart';
class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customText("Lịch khai giảng",20,false,false),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(Icons.search,color: Colors.black,size: 30,),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Container(
                // height: context.height*272/844,
                width: context.width*331/390,
                margin: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  border: Border.all(width: 1)
                ),
                child: Column(
                  children: [
                    scheduleCourse(context.height,context.width,context,"Khóa học NextJS 14-ReactJS-Tyoesc","18h00-21h00 Thứ 2,4,6 hàng tuần","Hồ Chí Minh","01/27/2024","10/20",true),
                    scheduleCourse(context.height,context.width,context,"Khóa học NextJS 14-ReactJS-Tyoesc","18h00-21h00 Thứ 2,4,6 hàng tuần","Hồ Chí Minh","01/27/2024","10/20",false),
                    scheduleCourse(context.height,context.width,context,"Khóa học NextJS 14-ReactJS-Tyoesc","18h00-21h00 Thứ 2,4,6 hàng tuần","Hồ Chí Minh","01/27/2024","10/20",true),
                    scheduleCourse(context.height,context.width,context,"Khóa học NextJS 14-ReactJS-Tyoesc","18h00-21h00 Thứ 2,4,6 hàng tuần","Hồ Chí Minh","01/27/2024","10/20",false),
                    scheduleCourse(context.height,context.width,context,"Khóa học NextJS 14-ReactJS-Tyoesc","18h00-21h00 Thứ 2,4,6 hàng tuần","Hồ Chí Minh","01/27/2024","10/20",true),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customText("Khóa học nổi bật", 20, false,false),
                    SizedBox(height: context.height*10/844,),
                    Row(
                      children: [
                        itemCourse(context.height,context.width,context,"assets/images/Rectangle_30.png",
                            "Khóa học Figma từ căn bản đến thực chiến","Nguyễn Vũ Hoàng Hiệp",
                            "10/04/2024","",
                            "Hồ Chí Minh","499.000"),
                        const Spacer(),
                        itemCourse(context.height,context.width,context,"assets/images/Rectangle_30.png",
                            "Khóa học Figma từ căn bản đến thực chiến","Nguyễn Vũ Hoàng Hiệp",
                            "10/04/2024","",
                            "Hồ Chí Minh","499.000")
                      ],
                    ),   SizedBox(height: context.height*15/844,),
                    Row(
                      children: [
                        itemCourse(context.height,context.width,context,"assets/images/Rectangle_30.png",
                            "Khóa học Figma từ căn bản đến thực chiến","Nguyễn Vũ Hoàng Hiệp",
                            "10/04/2024","",
                            "Hồ Chí Minh","499.000"),
                        const Spacer(),
                        itemCourse(context.height,context.width,context,"assets/images/Rectangle_30.png",
                            "Khóa học Figma từ căn bản đến thực chiến","Nguyễn Vũ Hoàng Hiệp",
                            "10/04/2024","",
                            "Hồ Chí Minh","499.000")
                      ],
                    )
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
  Text customText(String text,double size,bool colorText,bool align){
    return  Text(text,style: TextStyle(fontSize: size,fontWeight:colorText? FontWeight.normal:FontWeight.bold,color: Colors.black),textAlign:align?TextAlign.center:TextAlign.left,);
  }
  SizedBox elementText(double width,String text1,String text2){
    return   SizedBox(
      width: width*134/390,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          customText(text1, 15, false,true),
          customText(text2, 14, true,true),
        ],),
    );
  }
  Container scheduleCourse(double height,double width,BuildContext context,String nameCourse,String schedule,String address,String day,String blank,bool colorsdl){
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(25),
      // height: height*272/844,
      width: width*331/390,
      color: colorsdl?Colors.grey[300]:Colors.white,
      child: Column(
        children: [
          customText(nameCourse, 20, false ,true),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              elementText(width,"Lịch học",schedule),
              elementText(width,"Khu vực",address)
            ],
          ),
          SizedBox(height: height*10/844,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              elementText(width,"Ngày khai giảng",day),
              elementText(width,"Chỗ trống",blank)
            ],
          ),
          SizedBox(height: height*10/844,),
          InkWell(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterCourse())),
            child: Container(
              height: height*45/844,
              width: width*274.85/390,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Color(0xfffafa3a3)
              ),
              child:  const Text("Đăng ký",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,fontFamily: "tnr_bold",color: Colors.white),textAlign: TextAlign.center,),
            ),
          )
        ],
      ),
    );
  }
  Padding textCourse(double width,IconData iconCourse,String text1,String text2){
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        crossAxisAlignment: text2.length>15? CrossAxisAlignment.center:CrossAxisAlignment.end,
        children: [
          Icon(iconCourse,size: 15,color: Colors.black54,),
          SizedBox(width: width*2/390,),
          Text(text1,style: const TextStyle(fontSize: 10,fontFamily: "tnr"),),
          const Spacer(),
          text2.length>15?
          SizedBox(width: width*52/390, child: Text(text2,style: const TextStyle(fontSize: 10,fontFamily: "tnr"),overflow: TextOverflow.ellipsis,maxLines: 2,)) :
          Text(text2,style: const TextStyle(fontSize: 10,fontFamily: "tnr"),overflow: TextOverflow.ellipsis,maxLines: 2,)
        ],
      ),
    );
  }
  InkWell itemCourse(double height,double width,BuildContext context,String nameImg,String nameCourse,String nameTeacher,String day,String schedule,String address,String price){
    return  InkWell(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>CourseDetail(titileCourse: false))),
      child: Container(
        // height: height*291/844,
        width: width*168/390,
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: const BorderRadius.all(Radius.circular(10))
        ),
        child: Column(
          children: [
            Container(
              height: height*95/844,
              width: width*168/390,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(width: 1),
                  image: DecorationImage(
                      image: AssetImage(nameImg),
                      fit: BoxFit.cover
                  )
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment:  CrossAxisAlignment.start,
                  children: [
                    customText(nameCourse, 14, false,false),
                    Text(nameTeacher,style: const TextStyle(fontFamily: "tnr",color: Colors.grey,fontSize: 11),),
                    textCourse(width,Icons.sticky_note_2_outlined,"Lich khai giảng",day),
                    textCourse(width,Icons.favorite,"Lịch học",schedule),
                    textCourse(width,Icons.pin_drop,"Địa điểm",address),
                    schedule==""?SizedBox(height: height*11/844,):SizedBox(height: height*0/844,),
                    customText("$price đ",15, false,false),
                    SizedBox(height: height*5/844,),
                    Container(
                      height: height*19/844,
                      width: width*53/390,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: const BorderRadius.all(Radius.circular(2))
                      ),
                      child:customText("Bestseller",10,false,false),
                    ),

                  ],
                )
            )
          ],
        ),
      ),
    );
  }

}
