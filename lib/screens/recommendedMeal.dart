import 'package:flutter/material.dart';

class RecommendedMealPlan extends StatelessWidget {
  final breakfast;
  final lunch;
  final dinner;
  final breakfastimg;
  final lunchimg;
  final dinnerimg;
  RecommendedMealPlan(
      {this.breakfast,
      this.lunch,
      this.dinner,
      this.breakfastimg,
      this.lunchimg,
      this.dinnerimg});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      appBar: AppBar(
        title: Text('HealthRX'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.white,
                elevation: 10,
                child: Column(
                  children: [
                    Text("breakfast -$breakfast"),
                    Image.network(breakfastimg)
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.white,
                elevation: 10,
                child: Column(
                  children: [Text("lunch -$lunch"), Image.network(lunchimg)],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.white,
                elevation: 10,
                child: Column(
                  children: [Text("dinner -$dinner"), Image.network(dinnerimg)],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
