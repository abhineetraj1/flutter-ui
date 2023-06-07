import 'package:flutter/material.dart';

void main() {
  runApp(CarApp());
}

class CarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CarModelsPage(),
    );
  }
}

class CarModelsPage extends StatelessWidget {
  final List<CarModel> carModels = [
    CarModel(
      name: 'Swift',
      mileage: '20 km/l',
      price: '₹6,00,000',
      seaters: 5,
      details: 'The Maruti Suzuki Swift is a popular hatchback known for its stylish design and fuel efficiency.',
    ),
    CarModel(
      name: 'Baleno',
      mileage: '21 km/l',
      price: '₹7,00,000',
      seaters: 5,
      details: 'The Maruti Suzuki Baleno is a premium hatchback that offers a spacious interior and modern features.',
    ),
    CarModel(
      name: 'Vitara Brezza',
      mileage: '18 km/l',
      price: '₹8,00,000',
      seaters: 5,
      details: 'The Maruti Suzuki Vitara Brezza is a compact SUV with a powerful engine and excellent fuel efficiency.',
    ),
    // Add more Maruti Suzuki car models here
    CarModel(
      name: 'Dzire',
      mileage: '24 km/l',
      price: '₹7,50,000',
      seaters: 5,
      details: 'The Maruti Suzuki Dzire is a compact sedan known for its comfortable ride and fuel efficiency.',
    ),
    CarModel(
      name: 'Ertiga',
      mileage: '19 km/l',
      price: '₹8,50,000',
      seaters: 7,
      details: 'The Maruti Suzuki Ertiga is a versatile MPV that offers spacious interiors and practical features.',
    ),
    CarModel(
      name: 'Ciaz',
      mileage: '20 km/l',
      price: '₹10,00,000',
      seaters: 5,
      details: 'The Maruti Suzuki Ciaz is a stylish sedan that combines elegance with fuel efficiency and comfort.',
    ),
    CarModel(
      name: 'Alto',
      mileage: '22 km/l',
      price: '₹3,50,000',
      seaters: 4,
      details: 'The Maruti Suzuki Alto is a compact and affordable car suitable for daily commuting in the city.',
    ),
    CarModel(
      name: 'S-Presso',
      mileage: '21 km/l',
      price: '₹4,50,000',
      seaters: 4,
      details: 'The Maruti Suzuki S-Presso is a mini SUV with a tall design and features suitable for urban driving.',
    ),
    CarModel(
      name: 'Ignis',
      mileage: '20 km/l',
      price: '₹5,50,000',
      seaters: 5,
      details: 'The Maruti Suzuki Ignis is a compact crossover that offers a unique blend of style and functionality.',
    ),
    CarModel(
      name: 'Wagon R',
      mileage: '23 km/l',
      price: '₹5,00,000',
      seaters: 5,
      details: 'The Maruti Suzuki Wagon R is a spacious hatchback with a tall design and practical features.',
    ),
    CarModel(
      name: 'Celerio',
      mileage: '23 km/l',
      price: '₹4,50,000',
      seaters: 5,
      details: 'The Maruti Suzuki Celerio is a compact hatchback known for its fuel efficiency and affordability.',
    ),
    CarModel(
      name: 'Eeco',
      mileage: '16 km/l',
      price: '₹4,50,000',
      seaters: 7,
      details: 'The Maruti Suzuki Eeco is a practical and spacious MPV suitable for large families or commercial use.',
    ),
    CarModel(
      name: 'S-Cross',
      mileage: '20 km/l',
      price: '₹9,50,000',
      seaters: 5,
      details: 'The Maruti Suzuki S-Cross is a premium crossover with a refined engine and comfortable interiors.',
    ),
    CarModel(
      name: 'XL6',
      mileage: '18 km/l',
      price: '₹10,50,000',
      seaters: 6,
      details: 'The Maruti Suzuki XL6 is a premium MPV with captain seats and premium features for a comfortable ride.',
    ),
    CarModel(
      name: 'Super Carry',
      mileage: '23 km/l',
      price: '₹5,00,000',
      seaters: 2,
      details: 'The Maruti Suzuki Super Carry is a compact and efficient commercial vehicle suitable for businesses.',
    ),
    CarModel(
      name: 'Ciaz S',
      mileage: '20 km/l',
      price: '₹11,00,000',
      seaters: 5,
      details: 'The Maruti Suzuki Ciaz S is a sportier variant of the sedan with additional styling elements.',
    ),
    CarModel(
      name: 'Swift Dzire Tour',
      mileage: '26 km/l',
      price: '₹6,50,000',
      seaters: 5,
      details: 'The Maruti Suzuki Swift Dzire Tour is a taxi-friendly sedan with excellent fuel efficiency and comfort.',
    ),
    CarModel(
      name: 'Vitara Brezza AMT',
      mileage: '18 km/l',
      price: '₹9,00,000',
      seaters: 5,
      details: 'The Maruti Suzuki Vitara Brezza AMT is an automatic variant of the compact SUV with convenient driving experience.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Maruti Suzuki Car Models'),
      ),
      body: ListView.builder(
        itemCount: carModels.length,
        itemBuilder: (context, index) {
          final carModel = carModels[index];
          return ListTile(
            title: Text(carModel.name),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Mileage: ${carModel.mileage}'),
                Text('Price: ${carModel.price}'),
                Text('Seaters: ${carModel.seaters}'),
              ],
            ),
            trailing: ElevatedButton(
              child: Text('Show Info'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CarDetailsPage(carModel: carModel),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class CarModel {
  final String name;
  final String mileage;
  final String price;
  final int seaters;
  final String details;

  CarModel({required this.name, required this.mileage, required this.price, required this.seaters, required this.details});
}

class CarDetailsPage extends StatelessWidget {
  final CarModel carModel;

  CarDetailsPage({required this.carModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              carModel.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text('Mileage: ${carModel.mileage}'),
            Text('Price: ${carModel.price}'),
            Text('Seaters: ${carModel.seaters}'),
            SizedBox(height: 16),
            Text(
              'Details:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(carModel.details),
          ],
        ),
      ),
    );
  }
}
