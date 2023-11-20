
import 'package:flutter/material.dart'; 
  
void main() => runApp(MaterialApp( 
    theme: ThemeData( 
      hintColor: Colors.green, 
      scaffoldBackgroundColor: Colors.green[100], 
      primaryColor: Colors.green, 
    ), 
    home: MyApp())); 
  
class MyApp extends StatefulWidget { 
  const MyApp({super.key}); 
  
  @override 
  _MyAppState createState() => _MyAppState(); 
} 
  
class _MyAppState extends State<MyApp> { 
    
  // Strings to store the extracted Article titles 
  String result1 = 'Result 1'; 
  String result2 = 'Result 2'; 
  String result3 = 'Result 3'; 
    
  // boolean to show CircularProgressIndication 
  // while Web Scraping awaits 
  bool isLoading = false; 
  
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar(title: Text('GeeksForGeeks')), 
      body: Padding( 
        padding: const EdgeInsets.all(16.0), 
        child: Center( 
            child: Column( 
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [ 
              
            // if isLoading is true show loader 
            // else show Column of Texts 
            isLoading 
                ? CircularProgressIndicator() 
                : Column( 
                    children: [ 
                      Text(result1, 
                          style: TextStyle( 
                              fontSize: 20, fontWeight: FontWeight.bold)), 
                      SizedBox( 
                        height: MediaQuery.of(context).size.height * 0.05, 
                      ), 
                      Text(result2, 
                          style: TextStyle( 
                              fontSize: 20, fontWeight: FontWeight.bold)), 
                      SizedBox( 
                        height: MediaQuery.of(context).size.height * 0.05, 
                      ), 
                      Text(result3, 
                          style: TextStyle( 
                              fontSize: 20, fontWeight: FontWeight.bold)), 
                    ], 
                  ), 
            SizedBox(height: MediaQuery.of(context).size.height * 0.08), 
            MaterialButton( 
              onPressed: () {}, 
              child: Text( 
                'Scrap Data', 
                style: TextStyle(color: Colors.white), 
              ), 
              color: Colors.green, 
            ) 
          ], 
        )), 
      ), 
    ); 
  } 
} 
