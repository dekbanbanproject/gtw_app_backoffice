import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyConstant {
  static String appName = 'GTW-BACKOffice';
  static String domain = 'https://46e8-2403-6200-8830-116-212a-ba6f-5f05-9dbd.ngrok.io';
  static String routeHome = '/home';
  static String routeAuthen = '/authen';
  static String routeUserPage = '/user';
  static String routeHnPage = '/hn';
  static String routePoPage = '/po';
  static String routeAdminPage = '/ad';
  static String routeResetPage = '/reset';
  static String routeGleavePage = '/gleave';

  static List<String> menus = [
    'หนังสือราชการ',
    'เห็นชอบการลา',
    'เห็นชอบประชุม/อบรม/ดูงาน',
    'เห็นชอบจัดซื้อจัดจ้าง',
    'เห็นชอบคลังวัสดุ',   
  ];

  static List<Color> colors = [
    Colors.blue.shade200,
    Colors.pink.shade200,
    Colors.blue.shade200,
    Colors.purple.shade200,
    Colors.blue.shade200,   
  ];

  static List<Image> image = [
    Image.asset('/images/boo.png'),
  ];

  // Image
  static String img1 = 'images/Job.png';
  static String img2 = 'images/Jobbro.png';
  static String img3 = 'images/Payment.png';
  static String img4 = 'images/logo.png';
  static String img5 = 'images/logogtw.png';

  //Color
  static Color primary = Color(0xff3065f7);
  static Color danger = Color(0xffff0000);
  static Color warning = Color(0xffff3b00);
  static Color success = Color(0xff3af75d);
  static Color info = Color(0xff32bcf7);
  static Color dark = Color(0xffa3a18c);
  static Color white = Color(0xFFFFFFFF);

  //Style
  TextStyle h1() =>
      TextStyle(fontSize: 24, color: primary, fontWeight: FontWeight.bold);

  TextStyle h1White() =>
      TextStyle(fontSize: 24, color: white, fontWeight: FontWeight.bold);

  TextStyle h2() =>
      TextStyle(fontSize: 17, color: primary, fontWeight: FontWeight.bold);

  TextStyle h2White() =>
      TextStyle(fontSize: 17, color: white, fontWeight: FontWeight.bold);

  TextStyle h2info() =>
      TextStyle(fontSize: 17, color: info, fontWeight: FontWeight.bold);

  TextStyle h2dan() =>
      TextStyle(fontSize: 17, color: danger, fontWeight: FontWeight.bold);

  TextStyle h22dark() =>
      TextStyle(fontSize: 17, color: dark, fontWeight: FontWeight.bold);

  TextStyle h2dark() =>
      TextStyle(fontSize: 15, color: dark, fontWeight: FontWeight.bold);

  
  TextStyle h3dark() =>
      TextStyle(fontSize: 14, color: dark, fontWeight: FontWeight.bold);

  TextStyle h3() =>
      TextStyle(fontSize: 14, color: primary, fontWeight: FontWeight.bold);

  TextStyle h3white() =>
      TextStyle(fontSize: 14, color: white, fontWeight: FontWeight.bold);

//Button
  ButtonStyle mybuttonStyle() => ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      );


  BoxDecoration myBoxDecoration(String namePic) {
    return BoxDecoration(
      image: DecorationImage(
        image: AssetImage('images/$namePic'),
        fit: BoxFit.cover,
      ),
    );
  }

Container showlogo2() {
    return Container(
      width: 160.0,
      child: Image.asset('images/logo.png'),
    );
  }
  // Mydialog()
}
