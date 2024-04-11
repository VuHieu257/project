import 'package:academy_app/extensions/theme_x.dart';
import 'package:flutter/material.dart';

import '../course_detail.dart';

class StudentPage extends StatelessWidget {
  const StudentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customText("Khóa học của tôi",20,false),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(Icons.search,color: Colors.black,size: 30,),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        height: context.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              myCourse(context.height,context.width,context, "assets/images/Rectangle_30.png", "Khóa học NextJS 14-ReactJS-Tyoesc", "10/04/2024", "thứ 3,5,7", "Hồ Chí Minh"),
              myCourse(context.height,context.width, context,"assets/images/Rectangle_30.png", "Trọn Bộ 5 Kỹ Năng Thiết kế Adobe", "10/04/2024", "thứ 3,5,7", "Hồ Chí Minh"),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: customText("Kết quả học tập", 20, false),
              ),
              myResult("Khóa học NextJS 14-ReactJS-Tyoesc",10,10,null ),
              myResult("Trọn Bộ 5 Kỹ Năng Thiết kế Adobe",null,null,null )

            ],
          ),
        ),
      ),
    );
  }
  Text customText(String text,double size,bool boldText){
    return  Text(text,style: TextStyle(fontSize: size,overflow: TextOverflow.ellipsis,fontWeight:boldText? FontWeight.normal:FontWeight.bold,color: Colors.black),maxLines: 2,);
  }
  InkWell myCourse(double height,double width,BuildContext context,String nameImg,String nameCourse,String startDay,String schedule,String address){
    return  InkWell(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>CourseDetail(titileCourse: true))),
      child: Container(
        // height: context.height*96/844,
        // width: context.width*337/390,
        margin:const EdgeInsets.all(10),
        decoration:BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: Colors.grey[100]
        ),
        child: Row(
          children: [
            Container(
              height: height*120/844,
              width: width*135/390,
              margin: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(nameImg),
                      fit: BoxFit.cover
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(width: 0.5)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: width*0.52, child: customText(nameCourse, 14, false)),
                  customText("Lịch khai giảng: $startDay", 13, true),
                  customText("Lịch học: $schedule", 13, true),
                  customText("Địa chỉ: $address", 13, true)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  Container myResult(String course,double? pointProcess,double? midtermScore,double? finalGrade){
    return Container(
      margin:const EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(width: 1)
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: customText(course, 14, false),
          ),
          Table(
            // defaultColumnWidth: const FixedColumnWidth(100.0),
              border: TableBorder.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 1),
              children: [
                TableRow( children: [
                  Column(children:[Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: customText("Điểm quá trình", 12, true),
                  )]),
                  Column(children:[Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: customText("Điểm giữa kỳ", 12, true),
                  )]),
                  Column(children:[Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: customText("Điểm cuối kỳ", 12, true),
                  )]),
                ]),
                TableRow( children: [
                  Column(children:[Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: customText(pointProcess==null?" ":"$pointProcess", 12, true),
                  )]),
                  Column(children:[Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: customText(midtermScore==null?" ":"$midtermScore", 12, true),
                  )]),
                  Column(children:[Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: customText(finalGrade==null?" ":"$finalGrade", 12, true),
                  )]),
                ]),
              ])
        ],
      ),

    );
  }
}
