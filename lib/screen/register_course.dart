import 'package:academy_app/extensions/theme_x.dart';
import 'package:academy_app/screen/course_detail.dart';
import 'package:flutter/material.dart';
class RegisterCourse extends StatelessWidget {
  const RegisterCourse({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(onTap: ()=>Navigator.pop(context,MaterialPageRoute(builder: (context)=>CourseDetail(titileCourse: false))),child: const Icon(Icons.arrow_back,color: Colors.black87,)),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                customText("Thông tin cá nhân", 20, false),
                SizedBox(height: context.height*30/844),
              customTextField(context.height,TextInputType.text,"Họ và tên",true),
              SizedBox(height: context.height*10/844),
              customTextField(context.height,TextInputType.phone,"Số điện thoại",true),
              SizedBox(height: context.height*10/844),
              customTextField(context.height,TextInputType.datetime,"Ngày sinh",false),
              SizedBox(height: context.height*10/844),
              customTextField(context.height,TextInputType.emailAddress,"Email",true),
              SizedBox(height: context.height*10/844),
              customTextField(context.height,TextInputType.streetAddress,"Khu vực",false),
              SizedBox(height: context.height*10/844),
              customTextField(context.height,TextInputType.text,"Giới tính",false),
              SizedBox(height: context.height*40/844),
              customText("Học vấn", 20, false),
              SizedBox(height: context.height*20/844),
              customTextField(context.height,TextInputType.text,"Tốt nhiệp trường",false),
              SizedBox(height: context.height*10/844),
              customTextField(context.height,TextInputType.number,"Năm tốt nghiệp",false),
              SizedBox(height: context.height*10/844),
              customTextField(context.height,TextInputType.text,"Khoa",false),
              SizedBox(height: context.height*10/844),
              customTextField(context.height,TextInputType.number,"Điểm trung bình hệ số 4",false),
              SizedBox(height: context.height*30/844),
              Container(height: context.height*65/844,alignment: Alignment.center,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Color(0xfff33363F)),child: customText("Đăng ký", 19, true),)
            ],
          ),
        ),
      ),
    );
  }
  Text customText(String text,double size,bool colorText){
    return  Text(text,style: TextStyle(fontSize: size,fontWeight: FontWeight.bold,color: colorText?Colors.white:Colors.black));
  }
 SizedBox customTextField(double height,TextInputType keyboard ,String title, bool status){
    return SizedBox(
      height: height*60/844,
      child: TextField(
        keyboardType: keyboard,
        decoration: InputDecoration(
          border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)))
          ,hintText: status?"$title*":title,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        ),
      ),
    );
 }
}
