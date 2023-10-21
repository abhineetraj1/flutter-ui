import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

void navPressed(int a) {
  if (a == 0) {
    runApp(const Home());
  } else if (a == 2) {
    runApp(const User());
  } else if (a == 3) {
    runApp(const MyApp());
  } else {
    runApp(const Transaction());
  }
}

class Transaction extends StatelessWidget {
  const Transaction({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Recieved",style: TextStyle(color: Color.fromARGB(255, 18, 123, 0)),),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Row(children: [Icon(Icons.payment),Text("Normad Capitalist",style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),)
                            ]),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text("£ 500", style: TextStyle(fontSize: 25, fontFamily: "Calibri",  fontWeight: FontWeight.bold, color: Colors.black))
                          )
                        ],
                      ),
                    ),
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Recieved",style: TextStyle(color: Color.fromARGB(255, 18, 123, 0)),),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Row(children: [Icon(Icons.payment),Text("Geneva Watches",style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),)
                            ]),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text("£ 500", style: TextStyle(fontSize: 25, fontFamily: "Calibri",  fontWeight: FontWeight.bold, color: Colors.black))
                          )
                        ],
                      ),
                    ),
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Recieved",style: TextStyle(color: Color.fromARGB(255, 18, 123, 0)),),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Row(children: [Icon(Icons.payment),Text("Bioconn Corp",style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),)
                            ]),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text("£ 500", style: TextStyle(fontSize: 25, fontFamily: "Calibri",  fontWeight: FontWeight.bold, color: Colors.black))
                          )
                        ],
                      ),
                    ),
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Align(                            alignment: Alignment.centerLeft,
                            child: Text("Recieved",style: TextStyle(color: Color.fromARGB(255, 18, 123, 0)),),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Row(children: [Icon(Icons.payment),Text("Lexus Shipment",style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),)
                            ]),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text("£ 500", style: TextStyle(fontSize: 25, fontFamily: "Calibri",  fontWeight: FontWeight.bold, color: Colors.black))
                          )
                        ],
                      ),
                    ),
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Recieved",style: TextStyle(color: Color.fromARGB(255, 18, 123, 0)),),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Row(children: [Icon(Icons.payment),Text("Jennifer Adam",style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),)
                            ]),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text("£ 500", style: TextStyle(fontSize: 25, fontFamily: "Calibri",  fontWeight: FontWeight.bold, color: Colors.black))
                          )
                        ],
                      ),
                    ),
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Recieved",style: TextStyle(color: Color.fromARGB(255, 18, 123, 0)),),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Row(children: [Icon(Icons.payment),Text("Etara",style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),)
                            ]),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text("£ 500", style: TextStyle(fontSize: 25, fontFamily: "Calibri",  fontWeight: FontWeight.bold, color: Colors.black))
                          )
                        ],
                      ),
                    ),
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.credit_card, color: Colors.white,), label: "Card"),
            BottomNavigationBarItem(icon: Icon(Icons.monetization_on, color: Colors.white,), label: "Transaction"),
            BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.white,), label: "User"),
            BottomNavigationBarItem(icon: Icon(Icons.logout, color: Colors.white,), label: "Log out")
          ],
          onTap: navPressed,
          currentIndex: 1,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Color.fromARGB(255, 152, 152, 152),
        ),
      )
    );
  }
}

class User extends StatelessWidget {
  const User({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 30,),
              Align(
                alignment: Alignment.center,
                child: Image.network("https://img.lovepik.com/free-png/20211227/lovepik-business-men-use-computer-office-png-image_400620122_wh860.png", width: MediaQuery.of(context).size.width/2,),
              ),
              Text("Customer Name", style: TextStyle(fontSize: 35, fontFamily: "Calibri", fontWeight: FontWeight.bold),),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child:Text("Email", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 93, 93, 93)))
                ) 
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child:Text("contact@domain.com", style: TextStyle(fontFamily: "Calibri", fontSize: 21, color: Colors.black),)
                ) 
              ),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child:Text("Gender", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 93, 93, 93)))
                ) 
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child:Text("Male", style: TextStyle(fontFamily: "Calibri", fontSize: 21, color: Colors.black),)
                ) 
              ),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child:Text("Nationality", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 93, 93, 93)))
                ) 
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child:Text("INDIAN", style: TextStyle(fontFamily: "Calibri", fontSize: 21, color: Colors.black),)
                ) 
              ),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child:Text("Age", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 93, 93, 93)))
                ) 
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child:Text("20", style: TextStyle(fontFamily: "Calibri", fontSize: 21, color: Colors.black),)
                ) 
              ),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child:Text("Account type", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 93, 93, 93)))
                ) 
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child:Text("Offshore current", style: TextStyle(fontFamily: "Calibri", fontSize: 21, color: Colors.black),)
                ) 
              ),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child:Text("IFCE code", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 93, 93, 93)))
                ) 
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child:Text("HBZUAEAD3423", style: TextStyle(fontFamily: "Calibri", fontSize: 21, color: Colors.black),)
                ) 
              ),
              ElevatedButton(onPressed: () {},style: ElevatedButton.styleFrom(backgroundColor: Colors.black) ,child: Align(alignment: Alignment.center,child: Row(children: [Icon(Icons.edit),Text("Update details", style: TextStyle(fontSize: 19),)])))
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.credit_card, color: Colors.white,), label: "Card"),
            BottomNavigationBarItem(icon: Icon(Icons.monetization_on, color: Colors.white,), label: "Transaction"),
            BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.white,), label: "User"),
            BottomNavigationBarItem(icon: Icon(Icons.logout, color: Colors.white,), label: "Log out")
          ],
          onTap: navPressed,
          currentIndex: 2,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Color.fromARGB(255, 152, 152, 152),
        ),
      ),
    );
  }
}
class FingerPrint extends StatelessWidget {
  const FingerPrint({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 25,),
              Align(
                alignment: Alignment.center,
                child: Text("Unnamed", style: TextStyle(fontSize: 70, fontFamily: "Calibri"),)
                ),
              Align(
                alignment: Alignment.center,
                child: Text("Bank", style: TextStyle( fontSize: 50, fontFamily: "Calibri"),)
                ),
              SizedBox(height: 10,),
              Image.network("https://bsmedia.business-standard.com/_media/bs/img/article/2021-08/26/full/1630002528-0466.jpg"),
              SizedBox(height: 20),
              TextButton(onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) {return Home();}));}, child: Image.network("https://cityofdearborn.org/images/Government/Departments/Police/Fingerprint.jpg", height: 70,))
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FingerPrint(),
    );
  }
}


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Account credentials", style: TextStyle(color: Colors.white),),
            Icon(Icons.notifications)
          ],
        ), backgroundColor: Colors.black,),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.credit_card, color: Colors.white,), label: "Card"),
            BottomNavigationBarItem(icon: Icon(Icons.monetization_on, color: Colors.white,), label: "Transaction"),
            BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.white,), label: "User"),
            BottomNavigationBarItem(icon: Icon(Icons.logout, color: Colors.white,), label: "Log out")
          ],
          onTap: navPressed,
          currentIndex: 0,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Color.fromARGB(255, 152, 152, 152),
        ),
        body: Column(
          children: [
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10)
                ),
                width: (MediaQuery.of(context).size.width) * 0.9,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Current balance", style: TextStyle(color: Colors.white, fontSize: 19),),
                          Image.network("https://d28wu8o6itv89t.cloudfront.net/images/visalogopngtransparentpng-1579588235384.png", height: 30,)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("£ 3,000", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold ,color: Colors.white),),
                          Text("data")
                        ],
                      ),
                      SizedBox(height: 20,),
                      Align(alignment: Alignment.centerLeft,child: Text("**** **** **** 8472", style: TextStyle(color: Colors.white, fontSize: 25),)),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Customer Name", style: TextStyle(fontSize: 20,color: Colors.white),),
                          Text("09/26", style: TextStyle(fontSize: 20 ,color: Colors.white),)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.black, foregroundColor: Colors.white),onPressed: () {}, child: SizedBox(width: MediaQuery.of(context).size.width * 0.35, child: Row(children: [Icon(Icons.add),Text("Deposite ", style: TextStyle(fontSize: 19),)],),)),
                  ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.black, foregroundColor: Colors.white),onPressed: () {}, child: SizedBox(width: MediaQuery.of(context).size.width * 0.35, child: Row(children: [Icon(Icons.remove),Text("Withdaw", style: TextStyle(fontSize: 19),)],),)),
                ],
              ),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Contactless payment", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  Icon(Icons.check)
                ],
              ),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Online payment", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  Icon(Icons.check)
                ],
              ),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("International payment", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  Icon(Icons.check)
                ],
              ),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("ATM withdrawal", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  Icon(Icons.check)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
