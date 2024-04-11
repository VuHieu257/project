import 'package:academy_app/screen/course_detail.dart';
import 'package:flutter/material.dart';
import '../../extensions/theme_x.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // List<String> nameCategory=[
    //   "Java","Lập trình web","UI/UX","Android","Data analytics","Đồ họa"
    // ];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //slider
                Stack(
                  alignment: Alignment.bottomCenter,
                  fit: StackFit.loose,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      alignment: Alignment.center,
                      height: context.height*148/844,
                      color: Colors.grey[300],
                      child:  const Text("Slider",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: context.height*50/844,
                      width: context.height*50/390,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          elipSilider(context.height,context.width,true),
                          SizedBox(width: context.width*10/390,),
                          elipSilider(context.height,context.width,false),
                          SizedBox(width: context.width*10/390,),
                          elipSilider(context.height,context.width,false),
                        ],
                      ),
                    )
                  ],
                ),
              //research
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Tìm kiếm",
                    hintStyle: const TextStyle(fontWeight:FontWeight.w500,fontSize: 18,color: Colors.black),
                    prefixIcon:const Icon(Icons.search,color: Colors.black,) ,
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.black,width: 1.5)
                    )
                  ),
                ),
              ),
              //category
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        customText("Thể loại",20,false),
                        const Spacer(),
                        const Text("Xem tất cả",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: "tnr"),),

                      ],
                    ),
                    Row(
                      children: [
                        nameCategory(context.height,"Java"),
                        nameCategory(context.height,"Lập trình web"),
                        nameCategory(context.height,"UI/UX"),
                      ],
                    ),
                    Row(
                      children: [
                        nameCategory(context.height,"Android"),
                        nameCategory(context.height,"Data analytics"),
                        nameCategory(context.height,"Đồ họa"),
                      ],
                    ),
                  ],
                ),
              ),
              //Course
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customText("Các khóa học hàng đầu",20,false),
                    SizedBox(height: context.height*10/844,),
                    customText("Đồ họa",20,true),
                    SizedBox(height: context.height*10/844,),
                    Row(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>CourseDetail(titileCourse: false,)));
                          },
                          child: itemCourse(context.height,context.width,"assets/images/Rectangle_30.png",
                              "Khóa học Figma từ căn bản đến thực chiến","Nguyễn Vũ Hoàng Hiệp",
                              "10/04/2024","18:00 - 21:00 thứ 3,5& 8:30 - 11:30 thứ 7",
                              "Hồ Chí Minh","499.000"),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>CourseDetail(titileCourse: false,)));
                          },
                          child: itemCourse(context.height,context.width,"assets/images/Rectangle_30.png",
                              "Khóa học Figma từ căn bản đến thực chiến","Nguyễn Vũ Hoàng Hiệp",
                              "10/04/2024","",
                              "Hồ Chí Minh","499.000"),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customText("Học viên đang xem",20,false),
                    SizedBox(height: context.height*10/844,),
                    Row(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>CourseDetail(titileCourse: false,)));
                          },
                          child: itemCourse(context.height,context.width,"assets/images/Rectangle_30.png",
                              "Khóa học Figma từ căn bản đến thực chiến","Nguyễn Vũ Hoàng Hiệp",
                              "10/04/2024","18:00 - 21:00 thứ 3,5& 8:30 - 11:30 thứ 7",
                              "Hồ Chí Minh","499.000"),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>CourseDetail(titileCourse: false,)));
                          },
                          child: itemCourse(context.height,context.width,"assets/images/Rectangle_30.png",
                              "Khóa học Figma từ căn bản đến thực chiến","Nguyễn Vũ Hoàng Hiệp",
                              "10/04/2024","",
                              "Hồ Chí Minh","499.000"),
                        ),
                      ],
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
  Container elipSilider(double height,double width,bool? isColor){
    return Container(
      height: height*11/844,
      width: width*10/390,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          color: isColor==true?Colors.green:Colors.grey,
      ),
    );
  }
  Container nameCategory(double height,String nameCategory){
    return  Container(
      height: height*56/844,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(width: 1.5,color: Colors.black),
          borderRadius: const BorderRadius.all(Radius.circular(30))
      ),
      child:  Text(nameCategory,style:const TextStyle(fontSize: 16,fontFamily: "tnr_bold")),
    );
  }
  Text customText(String text,double size,bool colorText){
    return  Text(text,style: TextStyle(fontSize: size,fontWeight: FontWeight.bold,color: colorText?Colors.grey:Colors.black));
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
  Container itemCourse(double height,double width,String nameImg,String nameCourse,String nameTeacher,String day,String schedule,String address,String price){
    return  Container(
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
                  customText(nameCourse, 14, false),
                  Text(nameTeacher,style: const TextStyle(fontFamily: "tnr",color: Colors.grey,fontSize: 11),),
                  textCourse(width,Icons.sticky_note_2_outlined,"Lich khai giảng",day),
                  textCourse(width,Icons.favorite,"Lịch học",schedule),
                  textCourse(width,Icons.pin_drop,"Địa điểm",address),
                  schedule==""?SizedBox(height: height*11/844,):SizedBox(height: height*0/844,),
                  customText("$price đ",15, false),
                  SizedBox(height: height*5/844,),
                  Container(
                    height: height*19/844,
                    width: width*53/390,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: const BorderRadius.all(Radius.circular(2))
                    ),
                    child:customText("Bestseller",10,false),
                  ),

                ],
              )
          )
        ],
      ),
    );
  }
}
