import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'logic.dart';
class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page',style: TextStyle(color: Colors.purple),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text('You have pushed the button this many times:'),
            Obx(
                  () => Text(
                '${controller.count.value}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.increment();
           print("Saim ki aqal km kam ker rhe hai...");
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        //Bilal Saeed
      ),
    );
  }
}
