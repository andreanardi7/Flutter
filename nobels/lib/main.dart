import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MaterialApp(
      title: "Nobels App",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

var url = "https://webhooks.mongodb-stitch.com/api/client/v2.0/app/nobels_app-gbfcg/service/http_services/incoming_webhook/all_awards";

@override
  void initState() {
    super.initState();
    fetchData();
  }

Future fetchData() async {
    shopping_list.ShoppingList shoppingList, http.Client httpClient) async {
    final response = await httpClient.get(
      'https://webhooks.mongodb-stitch.com/api/client/v2.0/app/shopping_list-khtlh/service/shopping_list/incoming_webhook/get_list?list_id=' +
          shoppingList.id);

  // Map<String, dynamic> parameters;
  // parameters["shopping_list"] = shoppingList;
  // parameters["responsebody"] = response.body;
  // parameters["update_time"] = DateTime.now();
  // await compute(parseResponse, parameters);
  shoppingList.updateFromJson(response.body, DateTime.now());
  return;
}

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nobels App"),
        backgroundColor: Color(0xFF9100),
      ),
      drawer: Drawer(),
      body: Center(
        child: Text("Nobels App"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.refresh),
      ),
    );
  }
}
