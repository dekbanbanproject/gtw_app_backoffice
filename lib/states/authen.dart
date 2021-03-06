import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gtw/models/infoorg_model.dart';
import 'package:gtw/models/infousers_model.dart';
import 'package:gtw/utility/my_constant.dart';
import 'package:gtw/utility/my_dialog.dart';
import 'package:gtw/widgets/show_image.dart';
import 'package:gtw/widgets/show_title.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Authen extends StatefulWidget {
  const Authen({Key? key}) : super(key: key);

  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  bool statusRedEye = true;
  final formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  List<InfoOrgModels> info_orgmodels = [];
  List<Infousers_model> infousermodels = [];


  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
          behavior: HitTestBehavior.opaque,
          child: Form(
            key: formKey,
            child: ListView(
              children: [
                buildImage(size),
                builAppname(),
                buildUser(size),
                buildPassword(size),
                buildSubmitlogin(size),
                buildsetpass(),
              ],
            ),
          ),
        ),
      ),
    );
  }



  Row buildsetpass() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShowTitle(
          title: 'Forgot Password ?',
          textStyle: MyConstant().h3dark(),
        ),
        TextButton(
          onPressed: () => Navigator.pushNamed(context, '/reset'),
          child: const Text('Reset Password'),
        ),
      ],
    );
  }

  Row buildSubmitlogin(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 16),
          width: size * 0.6,
          child: ElevatedButton(
            style: MyConstant().mybuttonStyle(),
            onPressed: () {
              if (formKey.currentState!.validate()) {
                String username = usernameController.text;
                String password = passwordController.text;
                print('## username = $username, password = $password');
                checkAuthen(username: username, password: password);
              }
            },
            child: Text('Login'),
          ),
        ),
      ],
    );
  }

  Future<Null> checkAuthen({String? username, String? password}) async {
    String apiCheckAuthen =
        '${MyConstant.domain}/gtw/api/signin.php?isAdd=true&username=$username';
    await Dio().get(apiCheckAuthen).then((value) async {
      print('## value for API ===> $value');
      if (value.toString() == 'null') {
        MyDialog().normalDialog(
            context, '??????????????? $username ?????????????????????????????????', 'Username ?????????');
      } else {
        for (var item in json.decode(value.data!)) {
          Infousers_model model = Infousers_model.fromMap(item);
          if (password == model.password) {
            String type = model.type;
            print('## value for API ===> $type');
            SharedPreferences preferences =
                await SharedPreferences.getInstance();
            preferences.setString('type', type);
            preferences.setString('fullname', model.fullname);
            preferences.setString('personid', model.personid);
            preferences.setString('positionid', model.positionid);
            preferences.setString('depsubsubid', model.depsubsubid);

            switch (type) {
              case 'US':
                Navigator.pushNamedAndRemoveUntil(
                    context, MyConstant.routeUserPage, (route) => false);
                break;
              case 'PO':
                Navigator.pushNamedAndRemoveUntil(
                    context, MyConstant.routePoPage, (route) => false);
                break;
              case 'HN':
                Navigator.pushNamedAndRemoveUntil(
                    context, MyConstant.routeHnPage, (route) => false);
                break;
              case 'AD':
                Navigator.pushNamedAndRemoveUntil(
                    context, MyConstant.routeAdminPage, (route) => false);
                break;

              default:
            }
          } else {
            // Authen False
            MyDialog().normalDialog(context, '????????????????????????????????????', '????????????????????????????????? ?');
          }
        }
      }
    });
  }

  Row buildPassword(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 15),
          width: size * 0.6,
          child: TextFormField(
            controller: passwordController,
            validator: (value) {
              if (value!.isEmpty) {
                return '??????????????????????????? Password';
              } else {
                return null;
              }
            },
            obscureText: statusRedEye,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      statusRedEye = !statusRedEye;
                    });
                  },
                  icon: statusRedEye
                      ? Icon(
                          Icons.remove_red_eye,
                          color: MyConstant.info,
                        )
                      : Icon(
                          Icons.remove_red_eye_outlined,
                          color: MyConstant.info,
                        )),
              labelStyle: MyConstant().h2(),
              labelText: 'Password ',
              prefixIcon: Icon(
                Icons.lock_open,
                color: MyConstant.info,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyConstant.primary),
                borderRadius: BorderRadius.circular(30),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyConstant.warning),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row buildUser(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 30),
          width: size * 0.6,
          child: TextFormField(
            controller: usernameController,
            validator: (value) {
              if (value!.isEmpty) {
                return '??????????????????????????? username';
              } else {
                return null;
              }
            },
            decoration: InputDecoration(
              labelStyle: MyConstant().h2(),
              labelText: 'Username ',
              prefixIcon: Icon(
                Icons.account_circle,
                color: MyConstant.info,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyConstant.primary),
                borderRadius: BorderRadius.circular(30),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyConstant.warning),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row builAppname() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 30),
          child: ShowTitle(
            title: MyConstant.appName,
            textStyle: MyConstant().h1(),
          ),
        ),
      ],
    );
  }

  Row buildImage(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 50),
          width: size * 0.5,
          child: ShowImage(path: MyConstant.img1),
        ),
      ],
    );
  }
}
