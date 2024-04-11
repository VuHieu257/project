import 'package:academy_app/extensions/theme_x.dart';
import 'package:academy_app/screen/ui/my_account_page.dart';
import 'package:flutter/material.dart';
class MyInformationPage extends StatefulWidget {
  const MyInformationPage({super.key});

  @override
  State<MyInformationPage> createState() => _MyInformationPageState();
}

class _MyInformationPageState extends State<MyInformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(onTap: ()=>Navigator.pop(context,MaterialPageRoute(builder: (context)=>const MyAccountPage())),child: const Icon(Icons.arrow_back,color: Colors.black87,)),
        title: customText("Thông tin của tôi",20,false),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  // height: context.height*60/844,
                  width: context.width*0.8,
                  padding: const EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                    border: Border.all(width: 1),
                    color: Colors.grey[300]
                  ),
                  child: const Text("Vũ Minh Hiếu",style: TextStyle(color: Colors.black),),
                ),
              ),
              customAlign("0812507355"),
              customAlign("17/06/03"),
              customAlign("Vuhieu17062003@gmail.com"),
              customAlign("Hồ Chí Minh "),
              customAlign("Nam"),
              Row(
                children: [
                  Container(
                    height: context.height*55/844,
                    width: context.width*117/390,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.black54
                    ),
                    child: const Text("Sửa",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17)),
                  ),
                  Spacer(),
                  Container(
                    height: context.height*55/844,
                    width: context.width*117/390,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Colors.black54
                    ),
                    child: const Text("Lưu",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  Text customText(String text,double size,bool colorText){
    return  Text(text,style: TextStyle(fontSize: size,fontWeight: colorText?FontWeight.normal:FontWeight.bold,color: Colors.black));
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
  Align customAlign(String text){
    return Align(
      alignment: Alignment.center,
      child: Container(
        // height: context.height*60/844,
        width: context.width*0.8,
        padding: const EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            border: Border.all(width: 1),
            color: Colors.grey[300]
        ),
        child: Text(text,style: TextStyle(color: Colors.black),),
      ),
    );
  }
}
