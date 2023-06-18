import 'package:alive_project_api/view/uipage.dart';
import 'package:flutter/material.dart';

import 'dis_blo.dart';
// import 'districtsearch.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PersonalDataDetailsPage(),
                ),
              );
            },
            child: Text('ID'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DistrictDropdown(),
                ),
              );
            },
            child: Text('District'),
          ),
        ],
      ),
    );
  }
}
