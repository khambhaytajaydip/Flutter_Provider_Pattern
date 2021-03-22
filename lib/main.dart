import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:sampleproject/ui/loginpage/LoginPage.dart';
import 'package:sampleproject/ui/loginpage/LoginViewModel.dart';

void main() async {
  addProviderToList();
     WidgetsFlutterBinding.ensureInitialized();
          await SystemChrome.setPreferredOrientations(
              [DeviceOrientation.portraitUp],
          ); // 
    runApp(MyApp());
  }

// list add to provider list   
List<SingleChildWidget> providerList = [];
void addProviderToList() {
  providerList.add(ChangeNotifierProvider(create: (context) => LoginViewModel()));
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
          providers:
            providerList,
          child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: LoginPage()
      ),
    );
  }
}



