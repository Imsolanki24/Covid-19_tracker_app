import 'package:covid_tracker_app/View/world_state.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen(
      {required this.name,
      required this.image,
      required this.totalCases,
      required this.totalRecovered,
      required this.todayRecovered,
      required this.active,
      required this.critical,
      required this.test,
      required this.totalDeaths,
      required this.todayDeaths});

  String image;
  String name;
  int totalCases,
      totalDeaths,
      totalRecovered,
      active,
      critical,
      todayRecovered,
      test,
      todayDeaths;

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .067),
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .06,
                      ),
                      ResusableRow(
                          title: 'Cases', value: widget.totalCases.toString()),
                      ResusableRow(
                          title: 'Deaths',
                          value: widget.totalDeaths.toString()),
                      ResusableRow(
                          title: 'Recovered',
                          value: widget.totalRecovered.toString()),
                      ResusableRow(
                          title: 'Critical', value: widget.critical.toString()),
                      ResusableRow(
                          title: 'Active', value: widget.active.toString()),
                      ResusableRow(
                          title: 'Today Recovered',
                          value: widget.todayRecovered.toString()),
                      ResusableRow(
                          title: 'Today Deaths',
                          value: widget.todayDeaths.toString()),
                    ],
                  ),
                ),
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(widget.image),
              )
            ],
          )
        ],
      ),
    );
  }
}
