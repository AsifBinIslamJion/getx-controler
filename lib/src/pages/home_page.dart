import 'package:control_getx/src/controller/homepage_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  HomepageController homepageController = Get.put(HomepageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Home page',
            style: TextStyle(
              fontSize: 30,
              color: Colors.teal,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Center(
          child: Obx(
            () => Column(
              children: [
                Text(
                  '${homepageController.number}',
                  style: TextStyle(fontSize: 120, color: Colors.blue),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: homepageController.incriment,
                      child: Icon(Icons.add),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: homepageController.dicriment,
                      child: Icon(Icons.remove),
                    ),
                    SizedBox(width: 10),

                    ElevatedButton(
                      onPressed: homepageController.resart,
                      child: Icon(Icons.restart_alt),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
