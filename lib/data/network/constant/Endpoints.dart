/// Created by JAI 
class
Endpoints{
  Endpoints._();

  // base url
//  static const String baseUrl = "http://jsonplaceholder.typicode.com";
  static const String baseUrl = "https://reqres.in/api/";
  // receiveTimeout
  static const int receiveTimeout = 5000;

  // connectTimeout
  static const int connectionTimeout = 3000;

  // booking endpoints
  static const String login = baseUrl + "login";
}