import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Car {
  final String name;
  final String image;
  final String engineCapacity;
  final String fuelType;
  final String doors;
  final String torque;
  final String transmission;
  final String seatingCapacity;
  final String fuelTankCapacity;
  final String power;
  final String mileage;
  final String priceRange;

  Car({
    required this.name,
    required this.image,
    required this.engineCapacity,
    required this.fuelType,
    required this.doors,
    required this.torque,
    required this.transmission,
    required this.seatingCapacity,
    required this.fuelTankCapacity,
    required this.power,
    required this.mileage,
    required this.priceRange,
  });
}

List<Car> cars = [
  Car(
    name: "Bolero neo",
    image:
        "https://prog-ace-cdn.azureedge.net/-/media/project/mahindra/dotcom/mahindra/all-vehicles/suv/bolero-neo/bolero-neo_amc_navigation-front_desktop_235x127px.png",
    engineCapacity: "1493 cc",
    fuelType: "Diesel",
    doors: "5",
    torque: "210 N·m",
    transmission: "5-speed manual",
    seatingCapacity: "7",
    fuelTankCapacity: "60 L",
    power: "75 BHP",
    mileage: "17 km/l",
    priceRange: "10-14 lakh",
  ),
  Car(
    name: "Scorpio N",
    image:
        "https://prog-ace-cdn.azureedge.net/-/media/project/mahindra/dotcom/mahindra/all-vehicles/suv/scorpio-n/291x158.png",
    engineCapacity: "2200cc",
    fuelType: "Diesel",
    doors: "5",
    torque: "370 Nm",
    transmission: "6-speed manual transmission",
    seatingCapacity: "6-7",
    fuelTankCapacity: "57 L",
    power: "172.45 bhp",
    mileage: "15km/l",
    priceRange: "10-19 lakh",
  ),
  Car(
    name: "XUV 700",
    image:
        "https://prog-ace-cdn.azureedge.net/-/media/project/mahindra/dotcom/mahindra/all-vehicles/suv/xuv700/291-2x158-2.png",
    engineCapacity: "2200cc",
    fuelType: "Diesel",
    doors: "5",
    torque: "380 NM",
    transmission: "6-speed manual · 6-speed automatic",
    seatingCapacity: "7",
    fuelTankCapacity: "60 L",
    power: "182 BHP",
    mileage: "17",
    priceRange: "15-27 lakh",
  ),
  Car(
    name: "Thar",
    image:
        "https://prog-ace-cdn.azureedge.net/-/media/project/mahindra/dotcom/mahindra/all-vehicles/suv/thar/291x158_comm-pass.png",
    engineCapacity: "2180 cc",
    fuelType: "Diesel or petrol",
    doors: "3-4",
    torque: "300 Nm",
    transmission: "6-speed manual · 6-speed automatic",
    seatingCapacity: "4",
    fuelTankCapacity: "45-57 L",
    power: "",
    mileage: "15 L",
    priceRange: "Rs. 10.55 - 16.78 Lakh",
  ),
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mahindra',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mahindra SUVs'),
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CarDetailsPage(car: cars[index]),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.network(cars[index].image),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      cars[index].name,
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class CarDetailsPage extends StatelessWidget {
  final Car car;

  CarDetailsPage({required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(car.name),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(car.image),
            SizedBox(height: 20),
            Text('Engine Capacity: ${car.engineCapacity}'),
            Text('Fuel type: ${car.fuelType}'),
            Text('Doors: ${car.doors}'),
            Text('Torque: ${car.torque}'),
            Text('Transmission: ${car.transmission}'),
            Text('Seating capacity: ${car.seatingCapacity}'),
            Text('Fuel tank capacity: ${car.fuelTankCapacity}'),
            Text('Power: ${car.power}'),
            Text('Mileage: ${car.mileage}'),
            Container(
              color: Colors.red,  // Red background color
              padding: EdgeInsets.all(8),
              child: Text(
                'Price range: ${car.priceRange}',
                style: TextStyle(
                  color: Colors.white,  // White font color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
