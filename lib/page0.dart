import 'package:flutter/material.dart';
import 'package:mahm/Page1.dart';

class Page0 extends StatelessWidget {
  const Page0({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
         
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'الاقسام'),
              Tab(icon: Icon(Icons.work), text: 'فرص العمل'),
              Tab(icon: Icon(Icons.emoji_emotions), text: 'العروض'),
              Tab(icon: Icon(Icons.person), text: 'الملف الشخصي'),
            ],
          ),
        ),
        drawer: Drawer(

        ),
        body: TabBarView(
          children: [
            Page1(),
            Center(child: Text('Favorites Page')),
            Center(child: Text('Settings Page')),
            Center(child: Text('Profile Page')),
          ],
        ),
      ),
    );
  }
}


