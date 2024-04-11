import 'package:academy_app/extensions/theme_x.dart';
import 'package:flutter/material.dart';

import 'my_account_page.dart';
class MyInformationSecurityPage extends StatefulWidget {
  const MyInformationSecurityPage({super.key});

  @override
  State<MyInformationSecurityPage> createState() => _MyInformationSecurityPageState();
}

class _MyInformationSecurityPageState extends State<MyInformationSecurityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(onTap: ()=>Navigator.pop(context,MaterialPageRoute(builder: (context)=>const MyAccountPage())),child: const Icon(Icons.arrow_back,color: Colors.black87,)),
        title: const Text("Bảo mật tài khoản",style: TextStyle(fontSize: 18,color: Colors.black),),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:  30.0, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customText("Tài khoản của tôi", 20, false),
              SizedBox(height: context.height*0.01,),
              customText("Tài khoản", 16, true),
              customAlign("Vuhieu17062003@gmail.com",Colors.grey[100]! ),
              SizedBox(height: context.height*0.01,),
              customText("Mật khẩu", 16, true),
              Container(
              // height: context.height*60/844,
              width: context.width*0.8,
              padding: const EdgeInsets.only(left: 10),
              margin: const EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  border: Border.all(width: 1),
                  color: Colors.grey[100]
              ),
              child: Row(
                children: [
                  const Text("**************",style: TextStyle(color: Colors.black),),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5))
                    ),
                    child: const Icon(Icons.edit,color: Colors.black,size: 20,),
                  )
                ],
              ),
            ),
              SizedBox(height: context.height*0.04,),
              customText("Đổi mật khẩu", 20, false),
              SizedBox(height: context.height*0.01,),
              customText("Mật khẩu hiện tại", 16, true),
              customAlign("Mật khẩu hiện tại",Colors.grey[300]! ),
              SizedBox(height: context.height*0.01,),
              customText("Mật khẩu mới", 16, true),
              customAlign("Mật khẩu mới",Colors.grey[300]! ),
              SizedBox(height: context.height*0.01,),
              customText("Nhập lại Mật khẩu mới", 16, true),
              customAlign("Nhập lại Mật khẩu mới",Colors.grey[300]! ),
              SizedBox(height: context.height*0.03,),
              Container(
                height: context.height*60/844,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.black87
                ),
                child: const Text("Đổi mật khẩu",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Text customText(String text,double size,bool colorText){
    return  Text(text,style: TextStyle(fontSize: size,fontWeight: colorText?FontWeight.normal: FontWeight.bold,color: Colors.black));
  }
  SizedBox customTextField(double height,TextInputType keyboard ,String title){
    return SizedBox(
      height: height*60/844,
      child: TextField(
        keyboardType: keyboard,
        decoration: InputDecoration(
          border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)))
          ,hintText:title,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        ),
      ),
    );
  }
  Container customAlign(String text,Color color){
    return Container(
      // height: context.height*60/844,
      width: context.width*0.8,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          border: Border.all(width: 1),
          color: color
      ),
      child: Text(text,style: TextStyle(color: Colors.black),),
    );
  }
}

