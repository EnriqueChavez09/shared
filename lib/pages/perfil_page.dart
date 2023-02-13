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
  String age = "";
  String country = "";
  String city = "";

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() {
    // SharedPreferences userData = await SharedPreferences.getInstance();
    // fullName = userData.getString("fullName") ?? "-";
    // email = userData.getString("email") ?? "-";
    // address = userData.getString("address") ?? "-";
    fullName = SPGlobal().getString("fullName");
    email = SPGlobal().getString("email");
    address = SPGlobal().getString("address");
    age = SPGlobal().getString("age");
    country = SPGlobal().getString("country");
    city = SPGlobal().getString("city");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Account",
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/images/perfil.jpg",
                ),
                radius: 80.0,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    fullName,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    "Full Name",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black45,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    email,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black45,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    age,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    "Age",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black45,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    country,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    "Country",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black45,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    city,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    "City",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black45,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    address,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    "Address",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black45,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
