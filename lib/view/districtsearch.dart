// import 'package:flutter/material.dart';
// import '../services/api_services.dart';
//
// class DistrictDropdown extends StatefulWidget {
//   @override
//   _DistrictDropdownState createState() => _DistrictDropdownState();
// }
//
// class _DistrictDropdownState extends State<DistrictDropdown> {
//   List<String> districts = [];
//   String? selectedDistrict;
//
//   @override
//   void initState() {
//     super.initState();
//     fetchDistricts();
//   }
//
//   Future<void> fetchDistricts() async {
//     try {
//       final fetchedDistricts = await DistrictApi.fetchDistricts();
//       setState(() {
//         districts = fetchedDistricts;
//         selectedDistrict = districts.isNotEmpty ? districts[1] : null;
//       });
//     } catch (e) {
//       // Handle error
//       print('Error fetching districts: $e');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             DropdownButton<String>(
//               value: selectedDistrict,
//               items: districts.map((String district) {
//                 return DropdownMenuItem<String>(
//                   value: district,
//                   child: Text(district),
//                 );
//               }).toList(),
//               onChanged: (String? value) {
//                 // Handle selected district
//                 setState(() {
//                   selectedDistrict = value;
//                 });
//                 print('Selected district: $value');
//               },
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
// }
