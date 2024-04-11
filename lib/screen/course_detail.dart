import 'package:academy_app/extensions/theme_x.dart';
import 'package:academy_app/screen/register_course.dart';
import 'package:academy_app/screen/ui/home_page.dart';
import 'package:academy_app/screen/ui/my_information_page.dart';
import 'package:flutter/material.dart';
class CourseDetail extends StatelessWidget {
  bool titileCourse;
  CourseDetail({super.key,required this.titileCourse});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(onTap: ()=>Navigator.pop(context,MaterialPageRoute(builder: (context)=>const HomePage())),child: const Icon(Icons.arrow_back,color: Colors.black87,)),
        backgroundColor: Colors.white,
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
              padding: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(40),
                  ), color: Colors.grey[200]),
              child: const Icon(Icons.link,color: Colors.black87,))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: context.height*160/844,
                  width: context.width*359/390,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius:const BorderRadius.all(Radius.circular(10)),
                      image:const DecorationImage(image: AssetImage("assets/images/slider.png"),fit: BoxFit.cover),
                    border: Border.all(width: 0.5)
                  ),
                ),
              ),
              customText("Viết ứng dụng bán hàng với Java Springboot/API và Angular",20,false),
              SizedBox(height: context.height*20/844,),
              customText("Thực chiến,xây dựng ứng dụng bán hàng với Java Springboot API và Angular",16,true),
              SizedBox(height: context.height*10/844,),
              Container(
                height: context.height*35/844,
                width: context.width*75/390,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.all(Radius.circular(2))
                ),
                child: customText('Besteller', 13, false),
              ),
              SizedBox(height: context.height*10/844,),
              const Text.rich(
                TextSpan(
                  style: TextStyle(fontSize: 13),
                  text: "Do",
                  children: [
                    TextSpan(text:" Nguyễn Đức Hoàng",style: TextStyle(fontWeight: FontWeight.bold))
                  ]
                )
              ),
              textCourse(context.width,Icons.sticky_note_2_outlined,"Lich khai giảng","10/04/2024"),
              textCourse(context.width,Icons.favorite,"Lịch học","18:00 - 21:00 thứ 3,5& 8:30 - 11:30 thứ 7"),
              textCourse(context.width,Icons.pin_drop,"Địa điểm","Hồ Chí Minh"),
              textCourse(context.width,Icons.info_outline,"Cập nhận gần nhất 2/2024"," "),
              SizedBox(height: context.height*5/844,),
              titileCourse==false?Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      customText("1.499.000 ", 25, false),
                      const Text("đ",style: TextStyle(decoration: TextDecoration.underline,fontWeight: FontWeight.bold,fontSize: 25))
                    ],
                  ),
                  SizedBox(height: context.height*10/844,),
                  InkWell(
                    onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>const RegisterCourse())),
                    child: Container(
                      height: context.height*60/844,
                      alignment: Alignment.center,
                      color: const Color(0xfffAFA3A3),
                      child:  const Text("Đăng ký ngay",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
                    ),
                  ),
                  SizedBox(height: context.height*15/844,),
                  customText("Nội dung bài học", 16, false),
                  textCourseTitle(context.width,Icons.done,"Có khả năng xây dựng một ứng dụng web thực tế hoàn chỉnh từ đầu đến cuối, kết hợp giữa phần back-end với Angular",3),
                  customText("Chương trình giảng dạy", 16, false),
                  SizedBox(height: context.height*5/844,),
                  customText("10 phần + 80 bài giảng ", 15, true),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Row(
                      crossAxisAlignment:CrossAxisAlignment.center,
                      children: [
                        SizedBox(width:context.width*5/390,),
                        SizedBox(width:context.width*0.80,child:const Text("Phần 1 - Tạo ứng dụng Angular và viếtgiao diện phía Client"
                          ,style: TextStyle(fontSize: 16,fontFamily: "tnr"),)),
                        Icon(Icons.add,size: 25,color: Colors.black54,),

                      ],
                    ),
                  ),
                ],
              ):Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: context.height*10/844,),
                  customText("Lộ trình khóa học ", 16, false),
                  SizedBox(height: context.height*10/844,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        customText("Ngày bắt đầu: 10/04/2024 ", 13, true),
                        const Spacer(),
                        customText("Kết thúc:10/10/2024 ", 13, true),
                      ],
                    ),
                  ),
                  SizedBox(height: context.height*10/844,),
                  customText("Chương trình giảng dạy", 16, false),
                  SizedBox(height: context.height*5/844,),
                  customText("10 phần + 80 bài giảng ", 15, true),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment:CrossAxisAlignment.center,
                          children: [
                            SizedBox(width:context.width*5/390,),
                            SizedBox(width:context.width*0.80,child:const Text("Phần 1 - Tạo ứng dụng Angular và viếtgiao diện phía Client"
                              ,style: TextStyle(fontSize: 16,fontFamily: "tnr"),)),
                            Icon(Icons.add,size: 25,color: Colors.black54,),
                          ]
                        ),
                        SizedBox(height: context.height*10/844,),
                        customText("Tài liệu học", 16, false),
                        SizedBox(height: context.height*5/844,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Column(
                            children: [
                              const Row(
                                crossAxisAlignment:CrossAxisAlignment.center,
                                children: [
                                  Text("Buổi 1"
                                    ,style: TextStyle(fontSize: 16,fontFamily: "tnr",fontWeight: FontWeight.bold),),
                                  Spacer(),
                                  Icon(Icons.remove,size: 25,color: Colors.black54,),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal:8.0),
                                child: Column(
                                  children: [
                                    SizedBox(height: context.height*10/844,),
                                    customLik(context.width,1,"https://drive.google.com/drive/tailieu"),
                                    SizedBox(height: context.height*10/844,),
                                    customLik(context.width,2,"https://drive.google.com/drive/tailieu")                                ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]
              ),
              SizedBox(height: context.height*10/844,),
              customText("Khóa học này bao gồm", 16, false),
              textCourseTitle(context.width,Icons.local_offer_outlined,"Giấy chứng nhận hoàn thành",3),
              SizedBox(height: context.height*10/844,),
              customText("Yêu cầu", 16, false),
              textCourseTitle(context.width,Icons.circle_rounded,"Học viên cần có chút kiến thức cơ bản về lập trình, có kiên trì và sự nỗ lực để hoàn thành các bài tập và dự án trong khóa học",3),
              SizedBox(height: context.height*10/844,),
              customText("Mô tả", 16, false),
              textCourseTitle(context.width,null,'Khóa học " thực chiến, xây dựng úng dụng bán hàng với java Springboot API và Anggular " sẽ giúp bạn học cách tạo một ứng dụng web thực tế hoàn chỉnh từ đầu đến cuối, bao gồm cả phía back-end và front-end.',3),
            ],
          ),
        ),
      )

    );
  }
  Text customText(String text,double size,bool colorText){
    return  Text(text,style: TextStyle(fontSize: size,fontWeight: colorText?FontWeight.normal:FontWeight.bold,color: Colors.black));
  }
  Padding textCourse(double width,IconData iconCourse,String text1,String text2){
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        crossAxisAlignment: text2.length>15? CrossAxisAlignment.center:CrossAxisAlignment.end,
        children: [
          Icon(iconCourse,size: 15,color: Colors.black54,),
          SizedBox(width: width*2/390,),
          Text(text1,style: const TextStyle(fontSize: 13),),
          const Spacer(),
          text2.length>15?
          SizedBox(width: width*165/390, child: Text(text2,style: const TextStyle(fontSize: 13),textAlign: TextAlign.right,overflow: TextOverflow.ellipsis,maxLines: 2,)) :
          Text(text2,style: const TextStyle(fontSize: 13),overflow: TextOverflow.ellipsis,maxLines: 2,)
        ],
      ),
    );
  }
  Padding textCourseTitle(double width,IconData? iconCourse,String text1,int maxLine){
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: iconCourse==null?SizedBox(width:width,child:Text(text1,style: const TextStyle(fontSize: 13),textAlign: TextAlign.justify,)) :Row(
        crossAxisAlignment:CrossAxisAlignment.center,
        children: [
          Icon(iconCourse,size: 20,color: Colors.black54,),
          SizedBox(width: width*10/390,),
          SizedBox(width:width*0.80,child:Text(text1,style: const TextStyle(fontSize: 13),textAlign: TextAlign.justify,)),
        ],
      ),
    );
  }
  Row customLik(double width,int numericalOrder,String link){
    return  Row(
      crossAxisAlignment:CrossAxisAlignment.center,
      children: [
        customText("$numericalOrder", 14, true),
        SizedBox(width: width*0.02,),
        customText(link, 14, true),
        const Spacer(),
        const Icon(Icons.content_copy,size: 20,color: Colors.black54,),
      ],
    );
  }
}
