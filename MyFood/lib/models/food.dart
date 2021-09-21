import 'package:myfood/net/firestore.dart';

class Food {
  String name;
  int count;
  bool isSaved;
  String id;
  String drawerName;
  Food(String name, String drawerName) {
    this.name = name;
    this.count = 1;
    this.isSaved = false;
    this.drawerName = drawerName;
  }

  void increaseCount() {
    this.count += 1;
    this.isSaved = false;
  }

  getCount() {
    return this.count;
  }

  getName() {
    return this.name;
  }

  toJson() {
    return {'name': this.name, 'count': this.count};
  }

  void save() {
    if (this.id == "")
      addDocToUser('Food', this.toJson()).then((value) {
        this.id = value;
        print(this.id);
      });
    else
      updateDocToUser('Food', this.id, this.toJson());
    isSaved = true;
  }
}
