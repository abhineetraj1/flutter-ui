import 'package:flutter/material.dart';

// Made by Abhineet Raj (https://github.com/abhineetraj1)

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}


class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      home: Scaffold(   
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text("Sign up", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                Image.network("https://cdn.pixabay.com/photo/2020/05/22/19/35/tech-5206825_1280.jpg"),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your name",
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter mail ID",
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    )
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  child: ElevatedButton(onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return HomePage();
                    },));
                  }, child: Text("Sign up", style: TextStyle(fontSize: 20),)),
                  width: 250,
                ),
                Text("Or continue with", style: TextStyle(
                  fontSize: 18
                ),),
                ElevatedButton(onPressed: () {
                  print("Continue with google");
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    )
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/1200px-Google_%22G%22_Logo.svg.png"), width: 20, height: 20,),
                    Text("Continue with google", style: TextStyle(fontSize: 19),),

                  ],
                )),
                ElevatedButton(onPressed: () {
                  print("Continue with facebook");
                },
                style: ElevatedButton.styleFrom(
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20)
                    )
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(child: Image.network("https://img.freepik.com/premium-vector/blue-social-media-logo_197792-1759.jpg"), width: 20, height: 20,),
                    Text("Continue with facebook", style: TextStyle(fontSize: 19),),
                  ],
                )),
                Align(
                  alignment:Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text("Already have an account?", style: TextStyle(fontSize: 18,)),
                      TextButton(onPressed: () {
Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                          return LoginPage();
                        }));
                      },
                      child: Text("Login", style: TextStyle(fontSize: 18),)),
                    ])
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


class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(children: [
            SizedBox(height: 25,),
            Center(child: Text("Forgot password", style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),)),
            SizedBox(
              height: 20,
            ),
            TextField(decoration: InputDecoration(
              hintText: "Enter mail ID",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return LoginPage();
                })
              );
            }, child: SizedBox(
              width: 220,
              child: Row(
                children: [
                  Text("Send password reset mail", style: TextStyle(fontSize: 18),)
                ],
              ),
            ))
          ]),
        ),
      ),
    );
  }
}


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Text("Technology blog", style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(
                  height: 50,
                  width: 200,
                  child: Text("Login to continue", style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                Image.network("https://www.viewar.com/media/2017/08/AR_Facts-1.png"),            
                SizedBox(
                  height: 16,
                ),
                TextField(decoration: InputDecoration(
                  hintText: "Enter username",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                )
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(decoration: InputDecoration(
                  hintText: "Enter password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                )),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(onPressed: () {
                    print("Forgot password is clicked");
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return ForgotPassword();
                    }));
                  }, child: Text("Forgot password?")),
                ),           
                SizedBox(
                  width: 250,
                child: ElevatedButton(onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return HomePage();
                      }
                    )
                );
                }, child: Text("Login",style: TextStyle(fontSize: 19),
                ),
                ),
                ),
                SizedBox(
                  child: Text("or continue with", style: TextStyle(fontSize: 16),),
                  height: 24,
                ),
                ElevatedButton(onPressed: () {
                  print("Continue with google");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50)
                    )
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/1200px-Google_%22G%22_Logo.svg.png"),
                      width: 18,
                      height: 18,
                    ),
                    Text("Continue with google", style: TextStyle(
                      fontSize: 20,
                    ),),
                    ]
                )),
                ElevatedButton(onPressed: () {
                  print("Continue with google");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50)
                    )
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Image.network("https://img.freepik.com/premium-vector/blue-social-media-logo_197792-1759.jpg"),
                      width: 18,
                      height: 18,
                    ),
                    Text("Continue with facebook", style: TextStyle(
                      fontSize: 20,
                    ),),
                    ]
                )),
                Row(
                  children: [
                    Align(
                      child: Text("Don't have any account?", style: TextStyle(fontSize: 18)),
                      alignment: Alignment.centerLeft,
                    ),
                    TextButton(onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return SignUpPage();
                        })
                      );
                    }, child: Text("Sign up"))
                  ],
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}


class WatchPage extends StatelessWidget {
  const WatchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Row(
                children: [
                  ElevatedButton(onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return HomePage();
                      })
                    );
                  }, style: ElevatedButton.styleFrom(backgroundColor:Colors.white, foregroundColor: Colors.black) ,child: Icon(Icons.arrow_back)),
                  Text("Coding blog title", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                ],
              ),
              Image.network("https://www.searchenginejournal.com/wp-content/uploads/2020/08/7-ways-a-blog-can-help-your-business-right-now-5f3c06b9eb24e-1280x720.png"),
              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", style: TextStyle(fontSize: 20),)
            ],
          ),
        ),
      ),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return LoginPage();
          }));
        }, child: Icon(Icons.logout),),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(children: [
              SizedBox(
                height: 20,
              ),
              Text("Dashboard", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              SizedBox(height:20),
              SizedBox(
                child: Column(children: [
                  Image.network("https://user-images.githubusercontent.com/77251405/135733580-f9d63d13-44e5-425b-b1fe-3fd1d6aef078.png"),
                  Text("Coding blog title 1", style: TextStyle(
                    fontSize: 25
                  )),
                  ElevatedButton(onPressed: () {
                    print("object");
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return WatchPage();
                    }));
                  }, child: Center(child: SizedBox(child: Text("Watch",style: TextStyle(fontSize: 20)), width: 70,)))
                ]),
              ),
              SizedBox(height:20),
              SizedBox(
                child: Column(children: [
                  Image.network("https://user-images.githubusercontent.com/77251405/135733580-f9d63d13-44e5-425b-b1fe-3fd1d6aef078.png"),
                  Text("Coding blog title 2", style: TextStyle(
                    fontSize: 25
                  )),
                  ElevatedButton(onPressed: () {
                    print("object");
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return WatchPage();
                    }));
                  }, child: Center(child: SizedBox(child: Text("Watch",style: TextStyle(fontSize: 20)), width: 70,)))
                ]),
              ),
              SizedBox(height:20),
              SizedBox(
                child: Column(children: [
                  Image.network("https://user-images.githubusercontent.com/77251405/135733580-f9d63d13-44e5-425b-b1fe-3fd1d6aef078.png"),
                  Text("Coding blog title 3", style: TextStyle(
                    fontSize: 25
                  )),
                  ElevatedButton(onPressed: () {
                    print("object");
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return WatchPage();
                    }));
                  }, child: Center(child: SizedBox(child: Text("Watch",style: TextStyle(fontSize: 20)), width: 70,)))
                ]),
              ),
              SizedBox(height:20),
              SizedBox(
                child: Column(children: [
                  Image.network("https://user-images.githubusercontent.com/77251405/135733580-f9d63d13-44e5-425b-b1fe-3fd1d6aef078.png"),
                  Text("Coding blog title 4", style: TextStyle(
                    fontSize: 25
                  )),
                  ElevatedButton(onPressed: () {
                    print("object");
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return WatchPage();
                    }));
                  }, child: Center(child: SizedBox(child: Text("Watch",style: TextStyle(fontSize: 20)), width: 70,)))
                ]),
              ),
              SizedBox(height:20),
              SizedBox(
                child: Column(children: [
                  Image.network("https://user-images.githubusercontent.com/77251405/135733580-f9d63d13-44e5-425b-b1fe-3fd1d6aef078.png"),
                  Text("Coding blog title 5", style: TextStyle(
                    fontSize: 25
                  )),
                  ElevatedButton(onPressed: () {
                    print("object");
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return WatchPage();
                    }));
                  }, child: Center(child: SizedBox(child: Text("Watch",style: TextStyle(fontSize: 20)), width: 70,)))
                ]),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
