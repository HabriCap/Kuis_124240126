import 'package:flutter/material.dart';

import 'models/car.dart';

class DetailPage extends StatelessWidget {
  final Car cars;

  const DetailPage({super.key, required this.cars, required Car car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cars.brand + cars.name),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 18, 20, 16),
              child: AspectRatio(
                aspectRatio: 1.5,
                child: ColoredBox(
                  color: Colors.white,
                  child: Image.network(
                    cars.imageUrl,
                    fit: BoxFit.contain,
                    width: double.infinity,
                    errorBuilder: (context, error, stackTrace) => const Center(
                      child: Icon(
                        Icons.image_not_supported_outlined,
                        size: 64,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(cars.name),
                  SizedBox(height: 2),
                  Text('Rp : ${cars.price}'),
                  SizedBox(height: 2),
                  Text(cars.description),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
