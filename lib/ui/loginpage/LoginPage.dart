/*
 * Author: Jai Khambhayta
 * 
 */



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sampleproject/ui/loginpage/LoginViewModel.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

int _counter = 0;
class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>LoginViewModel(),
      child: intiView(context),
      
    );
  }

}
       
Widget intiView(BuildContext context) {
  LoginViewModel loginViewModel = Provider.of<LoginViewModel>(context);

   return Scaffold(
      appBar: AppBar(
        title: Text("test"),
      ),
      body:Consumer<LoginViewModel>(
        builder: (contextNew, model, _){
            print(loginViewModel.apisState);
          switch(loginViewModel.apisState){
            case ApiState.LOADING:
            return Center(child: CircularProgressIndicator());
              break;
            case ApiState.COMPLETED:
            return Center(
                      child: 
                      Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'You have pushed the button this many times:',
                        ),
                         Text (
                          '${loginViewModel.cl}',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        MaterialButton(child: Text("press here"), onPressed: ()  {
                          loginViewModel.increseNumber(_counter);
                          _counter =loginViewModel.cl;
                        },)
                      ],
                    ),
                  ); 
                          break;
                        case ApiState.ERROR:
                        return Container();
                          break;
                      }
            
                     
                  floatingActionButton: FloatingActionButton(
                    onPressed:(){
                      loginViewModel.increseNumber(_counter);
                      //  _counter = Provider.of<LoginViewModel>(context,listen:false).cl;
                    },
                    tooltip: 'Increment',
                    child: Icon(Icons.add),
                  ); 
                   },
                  )
                  // This trailing comma makes auto-formatting nicer for build methods.
                );
                
            }
            
            