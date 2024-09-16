import 'package:flutter/material.dart';

class DashboardAppBar extends StatelessWidget {
  const DashboardAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Hello, Jegede",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "welcome",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),

          Row(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Icon(
                    Icons.notifications_none,
                    size: 35,
                  ),
                ),
              ),

              const SizedBox(width: 10),

              ClipOval(
                child: Container(
                  width: 40,
                  height: 40,
                  color: Colors.grey[200],
                  child: Image.asset(
                    'assets/images/profil.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
