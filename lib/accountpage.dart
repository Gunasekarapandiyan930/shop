import 'package:apkrestart/Cart/edit.dart';
import 'package:flutter/material.dart';

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
            title: Text(title,style: const TextStyle(fontWeight: FontWeight.bold),),
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
        title: const Text(
          "Account",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
        ),
        actions: const [
          Icon(
            Icons.settings,
            color: Colors.white,
          ),
          SizedBox(width: 10),
        ],
        backgroundColor: Colors.red,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 20),
            // Profile Row
            Row(
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNcpockMAuShiAgEXZMpFLQGgJNYIw2pfnRJ5AHfCTZJNYJ1DasbedZaQUlAwU8zKskYk&usqp=CAU"), // Profile Image
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Monica",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Text("Ganthipuram, Coimapadore",
                          style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Edit(),
                          ));
                    },
                    child: const Icon(Icons.edit, color: Colors.black)),
              ],
            ),
            const SizedBox(height: 25),

            // Refer & Earn
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text("Refer", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                    Text("15",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
                Column(
                  children: [
                    Text("Earn", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                    Text("1502",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 25),

            // Orders, Return, Delivered Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AccountPage._statusButton(
                    "Orders", "15",Colors.blue),
                AccountPage._statusButton(
                    "Return", "5",Colors.purple),
                AccountPage._statusButton(
                    "Delivered", "10", Colors.deepOrange),
              ],
            ),
            const SizedBox(height: 25),

            // Menu Items

            AccountPage._menuItem(
              Icons.payment,
              "Payment & Refund",
            ),
            const SizedBox(height: 15),
            AccountPage._menuItem(Icons.language, "Change Language"),
            const SizedBox(height: 15),

            AccountPage._menuItem(
                Icons.account_balance_wallet, "Wallet Amount"),
            const SizedBox(height: 15),
            AccountPage._menuItem(Icons.account_balance, "Bank & UPI Details"),
            const SizedBox(height: 15),
            AccountPage._menuItem(Icons.logout, "Logout", color: Colors.red),
          ],
        ),
      ),
    );
  }
}
