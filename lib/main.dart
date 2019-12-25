import 'package:flutter/material.dart';
import 'package:meal_app/screens/meal_detail_screen.dart';
import 'package:meal_app/screens/tabs_screen.dart';
import './screens/categories_screen.dart';
import './screens/category_meals_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.pink,
            accentColor: Colors.amber,
            canvasColor: Color.fromRGBO(255, 254, 229, 1),
            fontFamily: 'Raleway',
            textTheme: ThemeData.light().textTheme.copyWith(
                  body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
                  body2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
                  title: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'RobotoCondensed',
                    fontWeight: FontWeight.bold,
                  ),
                )),
        initialRoute: '/',
        //home: TabsScreen(),
        routes: {
          '/': (context) => TabsScreen(),
          CategoryMealsScreen.routeName: (context) => CategoryMealsScreen(),
          MealDetailScreen.routeName: (context) => MealDetailScreen(),
        },
        onGenerateRoute: (settings) {
          print(settings.arguments);
          return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
        },
        onUnknownRoute: (settings) {
          return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
        });
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DeliMeals'),
      ),
      body: Center(child: CategoriesScreen()),
    );
  }
}
