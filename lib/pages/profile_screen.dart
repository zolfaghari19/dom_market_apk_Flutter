import 'package:application/carts/cart_scrren.dart';
import 'package:application/pages/constants.dart';
import 'package:application/pages/favorite_screen.dart';
import 'package:application/pages/nav_bar_screen.dart';
import 'package:application/providers/user_providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProviders>(context);
    final user = userProvider.user;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              _showEditDialog(context, userProvider);
            },
          ),
        ],
        leading: IconButton(
          style: IconButton.styleFrom(
            iconSize: 30,
            backgroundColor: Colors.white,
            padding: EdgeInsets.all(15),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BottomNavBar()),
            );
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(user.image),
              ),
            ),
            SizedBox(height: 15),
            Text(
              user.name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              user.email,
              style: TextStyle(color: Colors.black45, fontSize: 17),
            ),

            SizedBox(height: 30),

            _buildProfileTile(Icons.receipt_long, "My Orders", () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartScreen()),
              );
            }),
            _buildProfileTile(Icons.history, "History Orders", () {}),
            _buildProfileTile(Icons.favorite, "Favorite", () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FavoriteScreen()),
              );
            }),
            _buildProfileTile(Icons.logout, "Log out account ", () {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text("Log out")));
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileTile(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: kprimeryColor),
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }

  void _showEditDialog(BuildContext context, UserProviders provider) {
    final nameController = TextEditingController(text: provider.user.name);
    final emailController = TextEditingController(text: provider.user.email);

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("Edit by Name And Email", style: TextStyle(
          fontSize: 18
        ),),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: "Name"),
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: "Email"),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: () {
              provider.UpdateUser(nameController.text, emailController.text);
              Navigator.pop(context);
            },
            child: Text("Save"),
          ),
        ],
      ),
    );
  }
}
