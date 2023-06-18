import 'package:flutter/material.dart';
import '../model/mainmodel.dart';
import '../services/api_services.dart';

class PersonalDataDetailsPage extends StatefulWidget {
  @override
  _PersonalDataDetailsPageState createState() => _PersonalDataDetailsPageState();
}

class _PersonalDataDetailsPageState extends State<PersonalDataDetailsPage> {
  TextEditingController _idController = TextEditingController();
  PersonalData? data;
  bool isLoading = false;

  @override
  void dispose() {
    _idController.dispose();
    super.dispose();
  }

  Future<void> fetchData(String dataId) async {
    setState(() {
      isLoading = true;
    });

    try {
      final fetchedData = await PersonalDataAPI.fetchPersonalData(dataId);
      setState(() {
        data = fetchedData;
        isLoading = false;
      });
    } catch (e) {
      print('Failed to fetch personal data: $e');
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Data Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: _idController,
                decoration: InputDecoration(
                  labelText: 'Enter ID',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  String id = _idController.text;
                  if (id.isNotEmpty) {
                    fetchData(id);
                  }
                },
                child: Text('Fetch Data'),
              ),
              SizedBox(height: 16.0),
              isLoading
                  ? Center(child: CircularProgressIndicator())
                  : data != null
                  ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name: ${data!.data.dataName}',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text('Address: ${data!.data.dataAddress}'),
                  SizedBox(height: 8),
                  Text('CRP: ${data!.data.dataNameofcrp}'),
                  SizedBox(height: 8),
                  Text('Phone: ${data!.data.dataPhonenumber}'),
                  SizedBox(height: 8),
                  // Add more fields as needed
                ],
              )
                  : Center(child: Text('Failed to fetch personal data')),
            ],
          ),
        ),
      ),
    );
  }
}
