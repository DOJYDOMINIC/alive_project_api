import 'package:flutter/material.dart';

import '../services/api_services.dart';

class DistrictDropdown extends StatefulWidget {
  @override
  _DistrictDropdownState createState() => _DistrictDropdownState();
}

class _DistrictDropdownState extends State<DistrictDropdown> {
  List<String> districts = [];
  String? selectedDistrict;
  List<String> blocks = [];
  String? selectedBlock;

  @override
  void initState() {
    super.initState();
    fetchDistricts();
  }

  Future<void> fetchDistricts() async {
    try {
      final fetchedDistricts = await DistrictApi.fetchDistricts();
      setState(() {
        districts = fetchedDistricts;
        selectedDistrict = districts.isNotEmpty ? districts[0] : null;
      });
    } catch (e) {
      // Handle error
      print('Error fetching districts: $e');
    }
  }

  Future<void> fetchBlocks() async {
    try {
      final fetchedBlocks = await BlockApi.fetchBlocks(selectedDistrict!);
      setState(() {
        blocks = fetchedBlocks;
        selectedBlock = blocks.isNotEmpty ? blocks[0] : null;
      });
    } catch (e) {
      // Handle error
      print('Error fetching blocks: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('District and Block Dropdown'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select District:',
              style: TextStyle(fontSize: 16),
            ),
            DropdownButton<String>(
              value: selectedDistrict,
              items: districts.map((String district) {
                return DropdownMenuItem<String>(
                  value: district,
                  child: Text(district),
                );
              }).toList(),
              onChanged: (String? value) {
                // Handle selected district
                setState(() {
                  selectedDistrict = value;
                  fetchBlocks();
                });
                print('Selected district: $value');
              },
            ),
            SizedBox(height: 16),
            Text(
              'Select Block:',
              style: TextStyle(fontSize: 16),
            ),
            DropdownButton<String>(
              value: selectedBlock,
              items: blocks.map((String block) {
                return DropdownMenuItem<String>(
                  value: block,
                  child: Text(block),
                );
              }).toList(),
              onChanged: (String? value) {
                // Handle selected block
                setState(() {
                  selectedBlock = value;
                });
                print('Selected block: $value');
              },
            ),
          ],
        ),
      ),
    );
  }
}