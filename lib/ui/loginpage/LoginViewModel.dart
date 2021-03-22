/*
 * Author: Jai Khambhayta
 *
 */

import 'package:flutter/cupertino.dart';
import 'package:sampleproject/data/network/ApiProvider.dart';

class LoginViewModel extends ChangeNotifier{
final _apiProvider = ApiProvider();
ApiState apisState = ApiState.COMPLETED;


int cl = 0;
Future<void> increseNumber(int cntr)  async {
  cl = cntr + 10;
  apisState = ApiState.LOADING;
   notifyListeners();
 var l =await _apiProvider.postLogin();
  apisState = ApiState.COMPLETED;
  print("jai :: TOKEN "+l.token);
  notifyListeners();

}  
}

enum ApiState{ LOADING,COMPLETED,ERROR}
  
