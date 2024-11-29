import 'package:flutter/material.dart';
import 'package:mahm/Pages/Page1.dart';

class Page0 extends StatelessWidget {
  const Page0({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.red,
          backgroundColor: Colors.black12,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'الأقسام'),
              Tab(icon: Icon(Icons.work), text: 'فرص العمل'),
              Tab(icon: Icon(Icons.emoji_emotions), text: 'العروض'),
              Tab(icon: Icon(Icons.person), text: 'الملف الشخصي'),
            ],
          ),
        ),
        drawer: Drawer(),
        body: TabBarView(
          children: [
            Page1(),
            Center(
                child: Text('صفحة فرص العمل', style: TextStyle(fontSize: 24))),
            Center(child: Text('صفحة العروض', style: TextStyle(fontSize: 24))),
            Center(
                child:
                    Text('صفحة الملف الشخصي', style: TextStyle(fontSize: 24))),
          ],
        ),
      ),
    );
  }
}
