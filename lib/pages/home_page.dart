import 'package:flutter/material.dart';
import 'package:shared/utils/sp_glogal.dart';
import 'package:shared/widgets/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String token = "";
  final TextEditingController _fullName = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _address = TextEditingController();

  save() async {
    // SharedPreferences userData = await SharedPreferences.getInstance();
    // userData.setString("fullName", _fullName.text);
    // userData.setString("email", _email.text);
    // userData.setString("address", _address.text);
    SPGlobal().setString("fullName", _fullName.text);
    SPGlobal().setString("email", _email.text);
    SPGlobal().setString("address", _address.text);
  }

  // Future<String> getToken() async {
  //   SharedPreferences mandarina = await SharedPreferences.getInstance();
  //   return mandarina.getString("token") ?? "-";
  // }

  // removeToken() async {
  //   SharedPreferences mandarina = await SharedPreferences.getInstance();
  //   mandarina.remove("token");
  //   token = "-";
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Shared Prefences",
        ),
      ),
      drawer: MyDrawerWidget(),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(
            20.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _fullName,
                decoration: InputDecoration(
                  hintText: "Full Name",
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: _email,
                decoration: InputDecoration(
                  hintText: "Email",
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: _address,
                decoration: InputDecoration(
                  hintText: "Address",
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () async {
                  await save();
                  _fullName.clear();
                  _email.clear();
                  _address.clear();
                },
                child: const Text(
                  "Guardar",
                ),
              ),
              // ElevatedButton(
              //   onPressed: () {
              //     getToken();
              //     setState(() {});
              //   },
              //   child: const Text(
              //     "Obtener",
              //   ),
              // ),
              // ElevatedButton(
              //   onPressed: () {
              //     removeToken();
              //     setState(() {});
              //   },
              //   child: const Text(
              //     "Limpiar",
              //   ),
              // ),
              const SizedBox(
                height: 20.0,
              ),
              // Text(
              //   getToken(),
              // ),
              // FutureBuilder(
              //   future: getToken(),
              //   builder: (BuildContext context, AsyncSnapshot snapshot) {
              //     return snapshot.hasData
              //         ? Text(snapshot.data)
              //         : CircularProgressIndicator();
              //   },
              // )
            ],
          ),
        ),
      ),
    );
  }
}
