import 'package:flutter/material.dart';
import 'package:tech_mania1/constants.dart';
import 'package:tech_mania1/listtile.dart';
import 'package:tech_mania1/models/product.dart';
import 'package:tech_mania1/screens/details_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(child: Text("Смартфоны"),
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),),
        Categories(),
      ],
    );
  }
}

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Смартфоны", "Компьютеры", "Ноутбуки", "Наушники", "Периферия", "Фотоаппараты", "Камеры"];
  int selectedIndex = 0;
  List<Product> items = [
    Product(image: 'assets/images/iphonegreen.png', title: 'Описание', description: 'Детальное описание', price: 999, category: 'Категория'),
    Product(image: 'assets/images/iphonegreen.png', title: 'Описание', description: 'Детальное описание', price: 999, category: 'Категория'),
    Product(image: 'assets/images/iphonegreen.png', title: 'Описание', description: 'Детальное описание', price: 999, category: 'Категория'),
    Product(image: 'assets/images/iphonegreen.png', title: 'Описание', description: 'Детальное описание', price: 999, category: 'Категория'),
    Product(image: 'assets/images/iphonegreen.png', title: 'Описание', description: 'Детальное описание', price: 999, category: 'Категория'),
    Product(image: 'assets/images/iphonegreen.png', title: 'Описание', description: 'Детальное описание', price: 999, category: 'Категория'),
    Product(image: 'assets/images/iphonegreen.png', title: 'Описание', description: 'Детальное описание', price: 999, category: 'Категория'),
    Product(image: 'assets/images/iphonegreen.png', title: 'Описание', description: 'Детальное описание', price: 999, category: 'Категория'),
    Product(image: 'assets/images/iphonegreen.png', title: 'Описание', description: 'Детальное описание', price: 999, category: 'Категория'),
    Product(image: 'assets/images/iphonegreen.png', title: 'Описание', description: 'Детальное описание', price: 999, category: 'Категория'),
    Product(image: 'assets/images/iphonegreen.png', title: 'Описание', description: 'Детальное описание', price: 999, category: 'Категория'),
    Product(image: 'assets/images/iphonegreen.png', title: 'Описание', description: 'Детальное описание', price: 999, category: 'Категория')
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          SizedBox(
            height: 25,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Text(
              categories[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kTextColor
                    ),
            ),
                )),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(
            itemBuilder: (context, index) {
              final item = items[index];
              return ListItem(item.image, item.title, item.category, item.price.toString(), (item){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsScreen(product: item)),
                );
              });
            },
            itemCount: items.length,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,),
          ),
        ],
      ),
    );
  }
}

