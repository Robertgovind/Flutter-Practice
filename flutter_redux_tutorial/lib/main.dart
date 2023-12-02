import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class  AppState {
  final count;
  AppState(this.count)  ;

}

enum Actions{Increment}


AppState counter(AppState previous, dynamic action) {
  if (action == Actions.Increment) {
    return previous.count + 1;
  }
  return previous.count;
}


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.blue,
        ),
        home:  MyHomePage(),
      );
    
  }
}

class MyHomePage extends StatelessWidget {
   MyHomePage({super.key});
   final store = Store<AppState>(counter, initialState: AppState(0));

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Redux Tutorial'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              StoreConnector(
                converter: store.state.count,
                builder: (BuildContext context,count){return  Text(
                '$count',
                  style: Theme.of(context).textTheme.headlineMedium,
                );},
                
                
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
