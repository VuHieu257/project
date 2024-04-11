import 'package:academy_app/extensions/theme_x.dart';
import 'package:academy_app/screen/ui/my_information_page.dart';
import 'package:academy_app/screen/ui/my_information_security_page.dart';
import 'package:flutter/material.dart';
class MyAccountPage extends StatelessWidget {
  const MyAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customText("Tài khoản", 20, false),
        backgroundColor: Colors.white,
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal:  15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      height: context.height*163/844,
                      width: context.width*163/390,
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/User_box_duotone_line.png"),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    customText("Vu Hieu", 16, false),
                    SizedBox(height: context.height*0.01,),
                    customText("Vuhieu17062003@gmail.com", 16, true)
                  ],
                ),
              ],
            ),
            SizedBox(height: context.height*0.02,),
            customText("Tùy chọn của bạn", 15, false),
            SizedBox(height: context.height*0.01,),
            customElement("Tùy chọn ngôn ngữ",Icons.arrow_forward_ios),
            SizedBox(height: context.height*0.01,),
            InkWell(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyInformationPage())),
                child: customElement("Thông tin cá nhân",Icons.arrow_forward_ios)),
            SizedBox(height: context.height*0.01,),
            InkWell(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyInformationSecurityPage())),
                child: customElement("Bảo mật tài khoản",Icons.arrow_forward_ios)),
            SizedBox(height: context.height*0.02,),
            customText("Trợ giúp và hỗ trợ", 15, false),
            SizedBox(height: context.height*0.01,),
            customElement("Giới thiệu về app",Icons.arrow_forward_ios),
            SizedBox(height: context.height*0.01,),
            customElement("Câu hỏi thường gặp",Icons.arrow_forward_ios),
            SizedBox(height: context.height*0.01,),
            customElement("Chia sẻ ứng dụng",Icons.arrow_forward_ios),
            SizedBox(height: context.height*0.01,),
            Align( alignment: Alignment.center,child: TextButton(onPressed: (){}, child: const Text("Đăng xuất",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blueAccent),)))
          ],
        ),
      ),
    );
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

  Text customText(String text,double size,bool colorText){
    return  Text(text,style: TextStyle(fontSize: size,fontWeight: colorText?FontWeight.normal: FontWeight.bold,color: Colors.black));
  }
  Padding customElement(String text1,IconData icon){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        children: [
          customText(text1, 15, true),
          const Spacer(),
          Icon(icon,size: 20,color: Colors.grey,)
        ],
      ),
    );
  }
}
