import 'package:flutter/material.dart';
import 'package:mahm/Pages/Page1.dart';
import '../Comper/Cardss.dart';

class AddSectionPage extends StatelessWidget {
  AddSectionPage({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _imageUrlController = TextEditingController();

  void _showSnackbar(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(message),
      duration: Duration(seconds: 3),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _addSection(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      // إضافة القسم الجديد إلى قائمة الأقسام
      final newSection = Cardss(
        imge: _imageUrlController.text,
        name: _nameController.text,
        products: [],
      );

      sections.add(newSection);

      // عرض رسالة تأكيد
      _showSnackbar(context, 'تم إنشاء القسم بنجاح');

      // إعادة بناء صفحة الأقسام مع البيانات الجديدة
      Navigator.of(context).pop();
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Page1()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('إضافة قسم جديد'),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.blue.shade300, // لون الخلفية
            borderRadius: BorderRadius.circular(8.0), // حواف دائرية
          ),
          child: Form(
            key: _formKey,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      labelText: 'اسم القسم',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'يرجى إدخال اسم القسم';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    controller: _imageUrlController,
                    decoration: InputDecoration(
                      labelText: 'صورة عن القسم (URL)',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'يرجى إدخال مسار الصورة';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => _addSection(context),
                    child: Text('تأكيد'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}





// import 'package:flutter/material.dart';
// import '../Comper/Cardss.dart';

// class AddSectionPage extends StatelessWidget {
//   AddSectionPage({super.key});

//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _imageUrlController = TextEditingController();

//   void _showSnackbar(BuildContext context, String message) {
//     final snackBar = SnackBar(
//       content: Text(message),
//       duration: Duration(seconds: 3),
//     );
//     ScaffoldMessenger.of(context).showSnackBar(snackBar);
//   }

//   void _addSection(BuildContext context) {
//     if (_formKey.currentState!.validate()) {
//       // إضافة القسم الجديد إلى قائمة الأقسام
//       final newSection = Cardss(
//         imge: _imageUrlController.text,
//         name: _nameController.text,
//         products: [],
//       );

//       sections.add(newSection);

//       // عرض رسالة تأكيد
//       _showSnackbar(context, 'تم إنشاء القسم بنجاح');

//       // إعادة بناء صفحة الأقسام مع البيانات الجديدة
//       Navigator.of(context).pop(); // العودة إلى الصفحة السابقة
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('إضافة قسم جديد'),
//       ),
//       body: Center(
//         child: Container(
//           width: 400,
//           height: 400,
//           padding: const EdgeInsets.all(16.0),
//           decoration: BoxDecoration(
//             color: Colors.blue.shade300, // لون الخلفية
//             borderRadius: BorderRadius.circular(8.0), // حواف دائرية
//           ),
//           child: Form(
//             key: _formKey,
//             child: Center(
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   TextFormField(
//                     controller: _nameController,
//                     decoration: InputDecoration(
//                       labelText: 'اسم القسم',
//                       border: OutlineInputBorder(),
//                     ),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'يرجى إدخال اسم القسم';
//                       }
//                       return null;
//                     },
//                   ),
//                   SizedBox(height: 16),
//                   TextFormField(
//                     controller: _imageUrlController,
//                     decoration: InputDecoration(
//                       labelText: 'صورة عن القسم (URL)',
//                       border: OutlineInputBorder(),
//                     ),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'يرجى إدخال مسار الصورة';
//                       }
//                       return null;
//                     },
//                   ),
//                   SizedBox(height: 16),
//                   ElevatedButton(
//                     onPressed: () => _addSection(context),
//                     child: Text('تأكيد'),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

