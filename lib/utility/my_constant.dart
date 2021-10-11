import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyConstant {
  static String appName = 'GTW-BACKOffice';
  static String domain = 'https://b700-1-46-141-146.ngrok.io';
  static String routeHome = '/home';
  static String routeAuthen = '/authen';
  static String routeUserPage = '/UserPage';
  static String routeHnPage = '/HnPage';
  static String routePoPage = '/PoPage';
  static String routeResetPage = '/ResetPage';

  static List<String> menus = [
    'ประชาสัมพันธ์',
    'ข้อมูลบุคคล',
    'ลงเวลาปฎิบัติงาน',
    'ข้อมูลสุขภาพ',
    'ข้อมูลการลา',
    'ประชุม/อบรม/ดูงาน',
    'เงินเดือนค่าตอบแทน',
    'สวัสดิการบ้านพัก',
    'แผนงานโครงการ',
    'งานสารบรรณ',
    'งานบริการห้องประชุม',
    'งานบริการยานพาหนะ',
    'งานบริหารทรัพย์สิน',
    'งานพัสดุ',
    'คลังวัสดุ',
    'งานแจ้งซ่อมบำรุง',
    'ตารางเวรปฎิบัติงาน',
    'ตารางจัดโอที',
    'งานซักฟอก',
    'งานจ่ายกลาง',
  ];

  static List<Color> colors = [
    Colors.blue.shade200,
    Colors.blue.shade200,
    Colors.blue.shade200,
    Colors.blue.shade200,
    Colors.blue.shade200,
    Colors.blue.shade200,
    Colors.blue.shade200,
    Colors.blue.shade200,
    Colors.blue.shade200,
    Colors.blue.shade200,
    Colors.blue.shade200,
    Colors.blue.shade200,
    Colors.blue.shade200,
    Colors.blue.shade200,
    Colors.blue.shade200,
    Colors.blue.shade200,
    Colors.blue.shade200,
    Colors.blue.shade200,
    Colors.blue.shade200,
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

  //Style
  TextStyle h1() =>
      TextStyle(fontSize: 24, color: primary, fontWeight: FontWeight.bold);

  TextStyle h2() =>
      TextStyle(fontSize: 17, color: primary, fontWeight: FontWeight.bold);

  TextStyle h2info() =>
      TextStyle(fontSize: 17, color: info, fontWeight: FontWeight.bold);

  TextStyle h2dan() =>
      TextStyle(fontSize: 17, color: danger, fontWeight: FontWeight.bold);
  
  TextStyle h3dark() =>
      TextStyle(fontSize: 14, color: dark, fontWeight: FontWeight.bold);

  TextStyle h3() =>
      TextStyle(fontSize: 14, color: primary, fontWeight: FontWeight.bold);

//Button
  ButtonStyle mybuttonStyle() => ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      );


  // Mydialog()
}
