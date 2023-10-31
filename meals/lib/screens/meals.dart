import 'package:flutter/material.dart';
//import 'package:meals/data/dummy_data.dart';
import 'package:meals/models/meal.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, required this.tilte, required this.meals});

  final String tilte;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
      itemCount: meals.length,
      itemBuilder: (context, index) => Text(
        meals[index].title,
      ),
    );

    if (meals.isEmpty) {
      content = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Uh oh ... nothing here!',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Try selecting a different category!',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(tilte),
      ),
      body: content,
    );
    // body: ListView.separated(
    //   padding: const EdgeInsets.all(8),
    //   itemCount: meals.length,
    //   itemBuilder: (BuildContext context, int index) {
    //     return Container(
    //       height: 50,
    //       child: Center(
    //         child: Text(meals[index].title),
    //       ),
    //     );
    //   },
    //   separatorBuilder: (BuildContext context, int index) => const Divider(),
    // ),
    //);
  }
}
