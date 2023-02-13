import 'package:flutter/material.dart';
import 'package:shared/utils/sp_glogal.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PerfilPage extends StatefulWidget {
  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  String fullName = "";
  String email = "";
  String address = "";

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    // SharedPreferences userData = await SharedPreferences.getInstance();
    // fullName = userData.getString("fullName") ?? "-";
    // email = userData.getString("email") ?? "-";
    // address = userData.getString("address") ?? "-";
    fullName = SPGlobal().getString("fullName");
    email = SPGlobal().getString("email");
    address = SPGlobal().getString("address");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Account",
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                fullName,
              ),
              Text(
                email,
              ),
              Text(
                address,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
