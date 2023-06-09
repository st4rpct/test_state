import 'package:belajarprovider/another_page.dart';
import 'package:belajarprovider/provider_counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderManagement extends StatelessWidget {
  ProviderManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProviderCounter(),
      builder: (context, child) => Scaffold(
        appBar: AppBar(
          title: Text("Provider Management"),
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
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AnotherPage()));
                  },
                  child: Text("Another Page")),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.read<ProviderCounter>().increment();
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
