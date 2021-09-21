import 'package:myfood/models/food.dart';

class FridgeContainer {
  Map<String, int> mapIndex;
  List<Food> listOfFood;
  String name;
  FridgeContainer() {
    mapIndex = new Map<String, int>();
    listOfFood = new List<Food>();
    name = "default";
  }
  FridgeContainer.withName(String name) {
    mapIndex = new Map<String, int>();
    listOfFood = new List<Food>();
    this.name = name;
  }
  void add(String food) {
    print(food);
    if (mapIndex.containsKey(food)) {
      listOfFood[mapIndex[food]].increaseCount();
      listOfFood[mapIndex[food]].save();
      print("YES");
    } else {
      mapIndex[food] = this.getSize();
      listOfFood.add(new Food(food, this.name));
      listOfFood[this.getSize() - 1].save();
      print("NO");
    }
  }

  getSize() {
    print(mapIndex.length);
    return mapIndex.length;
  }

  operator [](int key) {
    print(key);
    print('hmm');
    return listOfFood[key];
  }
}
