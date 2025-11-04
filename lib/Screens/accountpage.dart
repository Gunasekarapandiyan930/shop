import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:share_plus/share_plus.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();

  static Widget _statusButton(String title, String count, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Text(title,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold)),
          Text(count, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }

  // Menu Item Widget
  static Widget _menuItem(IconData icon, String title, {Color? color}) {
    return Column(
      children: [
        Card(
          elevation: 6,
          child: ListTile(
            leading: Icon(icon, color: color ?? Colors.black),
            title: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          ),
        ),
        const Divider(height: 1),
      ],
    );
  }
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Account",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.sp,
              color: Colors.white),
        ),
        actions: [
          const Icon(
            Icons.settings,
            color: Colors.white,
          ),
          SizedBox(width: 10.w),
        ],
        backgroundColor: Colors.red,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15.r),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 20.h),
            // Profile Row
            Row(
              children: [
                CircleAvatar(
                  radius: 30.r,
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNcpockMAuShiAgEXZMpFLQGgJNYIw2pfnRJ5AHfCTZJNYJ1DasbedZaQUlAwU8zKskYk&usqp=CAU"), // Profile Image
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Monica",
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.bold)),
                      Text("Ganthipuram, Coimapadore",
                          style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
                InkWell(
                    onTap: () {
                      context.pushNamed('edit');
                    },
                    child: const Icon(Icons.edit, color: Colors.black)),
              ],
            ),
            SizedBox(height: 25.h),

            // Refer & Earn
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    InkWell(
                        onTap: () {
                          Share.share(
                            'Hey! Check out this awesome app!',
                            subject: 'Share Option',
                          );
                        },
                        child: const Text("Share",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold))),
                    Text("15",
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.bold)),
                  ],
                ),
                Column(
                  children: [
                    Text("Earn",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Text("1502",
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 25.h),

            // Orders, Return, Delivered Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AccountPage._statusButton("Orders", "15", Colors.blue),
                AccountPage._statusButton("Return", "5", Colors.purple),
                AccountPage._statusButton("Delivered", "10", Colors.deepOrange),
              ],
            ),
            SizedBox(height: 25.h),

            // Menu Items

            AccountPage._menuItem(
              Icons.payment,
              "Payment & Refund",
            ),
            SizedBox(height: 15.h),
            AccountPage._menuItem(Icons.language, "Change Language"),
            SizedBox(height: 15.h),

            AccountPage._menuItem(
                Icons.account_balance_wallet, "Wallet Amount"),
            SizedBox(height: 15.h),
            AccountPage._menuItem(Icons.account_balance, "Bank & UPI Details"),
            SizedBox(height: 15.h),
            AccountPage._menuItem(Icons.logout, "Logout", color: Colors.red),
          ],
        ),
      ),
    );
  }
}
