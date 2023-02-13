import 'package:flutter/material.dart';
import 'package:shared/global/global.dart';
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
  final TextEditingController _age = TextEditingController();
  final TextEditingController _country = TextEditingController();
  final TextEditingController _city = TextEditingController();

  save() {
    // SharedPreferences userData = await SharedPreferences.getInstance();
    // userData.setString("fullName", _fullName.text);
    // userData.setString("email", _email.text);
    // userData.setString("address", _address.text);
    SPGlobal().setString("fullName", _fullName.text);
    SPGlobal().setString("email", _email.text);
    SPGlobal().setString("address", _address.text);
    SPGlobal().setString("age", _age.text);
    SPGlobal().setString("country", _country.text);
    SPGlobal().setString("city", _city.text);
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
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Shared Prefences",
        ),
      ),
      drawer: MyDrawerWidget(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: height * 0.1),
            padding: const EdgeInsets.all(
              40.0,
            ),
            child: Column(
              children: [
                TextField(
                  controller: _fullName,
                  decoration: InputDecoration(
                    hintText: "Full Name",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: CustomColors.black54,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextField(
                  controller: _email,
                  decoration: InputDecoration(
                    hintText: "Email",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: CustomColors.black54,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextField(
                  controller: _age,
                  decoration: InputDecoration(
                    hintText: "Age",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: CustomColors.black54,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextField(
                  controller: _country,
                  decoration: InputDecoration(
                    hintText: "Country",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: CustomColors.black54,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 10.0,
                ),
                TextField(
                  controller: _city,
                  decoration: InputDecoration(
                    hintText: "City",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: CustomColors.black54,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 10.0,
                ),
                TextField(
                  controller: _address,
                  decoration: InputDecoration(
                    hintText: "Address",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: CustomColors.black54,
                        width: 2.0,
                      ),
                    ),
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
                    _age.clear();
                    _country.clear();
                    _city.clear();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColors.black54,
                      minimumSize: const Size(150.0, 40.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                  child: const Text(
                    "Save",
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
      ),
    );
  }
}
