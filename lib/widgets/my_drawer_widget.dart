import 'package:flutter/material.dart';

class MyDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/background.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      "assets/images/perfil.jpg",
                    ),
                    radius: 40.0,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Renildo Enrique Chavez Silva",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "rchavezs@uni.pe",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "perfil");
            },
            child: ListTile(
              leading: Icon(
                Icons.person,
              ),
              title: Text(
                "Mi perfil",
              ),
              minLeadingWidth: 20.0,
            ),
          )
        ],
      ),
    );
  }
}
