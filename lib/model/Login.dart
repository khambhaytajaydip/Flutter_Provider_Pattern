/*
 * Author: Jai Khambhayta
 */

class Login{

String token;

Login(this.token);

  factory Login.fromJson(dynamic json) {
    String posts = json.map((post) => Login.fromMap(post));

    return Login(posts);
  }

 Login.fromMap(Map<String, dynamic> json) : token = (json["token"]);
}
