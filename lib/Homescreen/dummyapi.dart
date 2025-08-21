
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Dummyapi extends StatefulWidget {
  const Dummyapi({super.key});

  @override
  State<Dummyapi> createState() => _DummyapiState();
}

class _DummyapiState extends State<Dummyapi> {
  List documents = [];
  final url ='https://dummyjson.com/products';
  getuser()async{
 var res = await Dio().get(url);
 if (res.statusCode==200) {
  setState(() {
    documents = res.data['products'];
   
  });
   
 }
  }
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getuser();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 900,
            //color: Colors.purple,
            child: ListView.builder(itemCount: documents.length,shrinkWrap: true,
              itemBuilder: (context, index) {
               return ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  child: Image.network(""),
            
                ),
                title: Text(documents[index]["title"]),
                trailing: Text(documents[index]["rating"].toString()),
               );
              
            },),
          )
        ],
      ),
    );
  }
}