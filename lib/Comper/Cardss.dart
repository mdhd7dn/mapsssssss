import 'package:mahm/Comper/Products.dart';

class Cardss {
  String imge;
  String name;
  List<Product> products;

  Cardss({required this.imge, required this.name, required this.products});
}

List<Cardss> sections = [
  Cardss(
    imge: 'imaegs/المواد-الغذائية.png',
    name: 'قسم المواد الغذائية',
    products: [
      Product(name: 'حليب', image: 'imaegs/milk.png'),
      Product(name: 'خبز', image: 'imaegs/bread.png'),
    ],
  ),
  Cardss(
    imge: 'imaegs/مواد-التنظيف.jpeg',
    name: 'قسم مواد التنظيف',
    products: [
      Product(name: 'منظف الزجاج', image: 'imaegs/glass_cleaner.png'),
      Product(name: 'ممسحة', image: 'imaegs/mop.png'),
    ],
  ),
  Cardss(
    imge: 'imaegs/الادوات-المنزلية.png',
    name: 'قسم الادوات المنزلية',
    products: [
      Product(name: 'منتج 1', image: 'imaegs/product1.png'),
      Product(name: 'منتج 2', image: 'imaegs/product2.png'),
    ],
  ),
  Cardss(
    imge: 'imaegs/قسم-الاكسسوارات.png',
    name: 'قسم الاكسسوارات',
    products: [
      Product(name: 'منتج 1', image: 'imaegs/product1.png'),
      Product(name: 'منتج 2', image: 'imaegs/product2.png'),
    ],
  ),
  Cardss(
    imge: 'imaegs/قسم-الالبسة.png',
    name: 'قسم-الالبسة',
    products: [
      Product(name: 'منتج 1', image: 'imaegs/product1.png'),
      Product(name: 'منتج 2', image: 'imaegs/product2.png'),
    ],
  ),
  Cardss(
    imge: 'imaegs/قسم-الاحذية.png',
    name: 'قسم-الاحذية',
    products: [
      Product(name: 'منتج 1', image: 'imaegs/product1.png'),
      Product(name: 'منتج 2', image: 'imaegs/product2.png'),
    ],
  ),
  Cardss(
    imge: 'imaegs/قسم-الصرافةوالحوالات.png',
    name: 'قسم-الصرافةوالحوالات',
    products: [
      Product(name: 'منتج 1', image: 'imaegs/product1.png'),
      Product(name: 'منتج 2', image: 'imaegs/product2.png'),
    ],
  ),
  Cardss(
    imge: 'imaegs/قسم-الإلكترونيات.jpg',
    name: 'قسم-الإلكترونيات',
    products: [
      Product(name: 'منتج 1', image: 'imaegs/product1.png'),
      Product(name: 'منتج 2', image: 'imaegs/product2.png'),
    ],
  ),

   Cardss(
    imge: 'imaegs/قسم-ألعاب الأطفال.jpg',
    name: 'قسم-العاب-الاطفال',
    products: [
      Product(name: 'منتج 1', image: 'imaegs/product1.png'),
      Product(name: 'منتج 2', image: 'imaegs/product2.png'),
    ],
  ),
   Cardss(
    imge: 'imaegs/قسم-الأجهزة الرياضية.jpg',
    name: 'قسم-الاجهزة-الرياضية',
    products: [
      Product(name: 'منتج 1', image: 'imaegs/product1.png'),
      Product(name: 'منتج 2', image: 'imaegs/product2.png'),
    ],
  ),
   Cardss(
    imge: 'imaegs/قسم-الكتب والقرطاسية.png',
    name: 'قسم-الكتب والقرطاسية',
    products: [
      Product(name: 'منتج 1', image: 'imaegs/product1.png'),
      Product(name: 'منتج 2', image: 'imaegs/product2.png'),
    ],
  ),

   Cardss(
    imge: 'imaegs/قسم-الطوارئ.jpg',
    name: 'قسم-الطوارئ',
    products: [
      Product(name: 'منتج 1', image: 'imaegs/product1.png'),
      Product(name: 'منتج 2', image: 'imaegs/product2.png'),
    ],
  ),
];
