import 'package:belajarprovider/provider_counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AnotherPage extends StatelessWidget {
  AnotherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProviderCounter(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Another Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Consumer<ProviderCounter>(
                builder: (context, providerCounter, child) {
                  print("2. Consumer dijalankan");
                  return Text(
                    '${providerCounter.counter}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
