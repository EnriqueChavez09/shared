import 'package:flutter/material.dart';
import 'package:shared/utils/sp_glogal.dart';

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
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage(
                      "assets/images/perfil.jpg",
                    ),
                    radius: 35.0,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    SPGlobal().getString("fullName"),
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    SPGlobal().getString("email"),
                    style: const TextStyle(
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
            child: const ListTile(
              leading: Icon(
                Icons.person,
              ),
              title: Text(
                "My Profile",
              ),
              minLeadingWidth: 20.0,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "perfil");
            },
            child: const ListTile(
              leading: Icon(
                Icons.shopping_bag,
              ),
              title: Text(
                "My Purchases",
              ),
              minLeadingWidth: 20.0,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "perfil");
            },
            child: const ListTile(
              leading: Icon(
                Icons.shopping_cart,
              ),
              title: Text(
                "Cart",
              ),
              minLeadingWidth: 20.0,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "perfil");
            },
            child: const ListTile(
              leading: Icon(
                Icons.settings,
              ),
              title: Text(
                "Settings",
              ),
              minLeadingWidth: 20.0,
            ),
          )
        ],
      ),
    );
  }
}
