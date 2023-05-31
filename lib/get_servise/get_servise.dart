import 'dart:collection';

import 'package:dio/dio.dart';

class GetCurrensyServise{
  static Future<dynamic> getCurrensy() async{
    try{
      Response response=await Dio().get("https://pokeapi.co/api/v2/pokemon/ditto");
      if(response.statusCode==200){

        return response.data;

      }else{
        print(response.statusMessage);
        throw response.statusMessage.toString();
      }
    }on DioError catch(e){
      if(e.type==DioErrorType.other){
        print("Internet yoq");
      }
    }
  }
}