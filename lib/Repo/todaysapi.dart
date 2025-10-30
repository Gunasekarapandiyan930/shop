import 'package:dio/dio.dart';

class Reposity {
  final url = 'https://dummyjson.com/products';

getuser()async{
  var res = await Dio().get(url);
  if (res.statusCode== 200) {
   return { "status":true,"message":"passed","storedata":res.data};
  }
  else {
    return {"status":false,"message":"failed"
    };
  }










}





  
}