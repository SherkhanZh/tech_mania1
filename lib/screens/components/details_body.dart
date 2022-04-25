import 'package:flutter/material.dart';
import 'package:tech_mania1/constants.dart';

import '../../models/product.dart';

class DetailsBody extends StatelessWidget {
  final Product product;
  const DetailsBody({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(child: Text("iPhone 13", style: TextStyle(color: Colors.black,
        fontSize: 35, fontWeight: FontWeight.bold),),
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),),
        Text("Apple iPhone 13 Pro Max 256Gb Silver"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
              Text("Цена", style: TextStyle(color: Colors.black,)),
              Text("\$${product.price}", style: TextStyle(color: Colors.black,
                  fontSize: 35, fontWeight: FontWeight.bold)),
            Container(child: Image.asset(product.image)),
          ]
        ),
        Expanded(child: Text('Характеристики: ОС iOS 15, Тип корпуса: классический, Экран: 6.7", Оперативная память: 6 Гб, Встроенная память: 256Гб, SIM: 1 SIM, Основная камера: 12 Mpx, Количество модулей камеры: 3, Фронтальная камера: 12Mpx, Аккумулятор: 4373 мАч, сенсорный экран, поддержка 4G, поддержка 5G, NFC, Bluetooth, Wi-Fi, GPS, Сканер лица, Быстрая зарядка, Беспроводная зарядка')),
        ElevatedButton(onPressed: (){}, child: Text("Купить сейчас"),
        )
      ],);

  }
}
