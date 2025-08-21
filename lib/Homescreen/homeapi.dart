import 'package:dio/dio.dart';

class Repository {
  final links = 'https://dummyjson.com/carts';
  fetchdatass ()async{
    var res = await Dio().get(links);
    if (res.statusCode == 200) {
      return { 'status': true, 'message':'passed',"data": res.data};
    }
    else {return
    {'status':false,'message':'failed'};}
  }
}