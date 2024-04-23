// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:maisonparfaite/utils/constants/api_constants.dart';

class AuthentificationController extends GetxController {
  RxBool isLoading = false.obs;

  Future signup(
    {
      required String nom,
      required String prenom,
      required String email,
      required String password,
      required String numero_tel,
      required String type,

    }
  ) async {
   try {
     isLoading(true);
    
    var data = {
      'nom': nom,
      'prénom': prenom,
      'email': email,
      'password': password,
      'numéro_tél': numero_tel,
      'type': type,
    };

    var response = await http.post(
      Uri.parse(url + 'register'),
      headers: {
        'Accept' : 'application/json',
      },
      body: data,
     
    );

    if(response.statusCode==201){
      isLoading.value = false;
     print(json.decode(response.body) ) ;
    }else{
      isLoading.value = false;
       print(json.decode(response.body) ) ;
    }
   } catch(e){
    isLoading.value = false;
    print(e.toString());
   }


  }

}
