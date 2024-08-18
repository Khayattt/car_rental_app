import 'package:car_rental_app/FirestoreService.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void addCar(carData) {
  FirestoreService().addItem(carData, 'Cars');
}

void fetchCarsData() async {
  print('started');

  CollectionReference _collectionRef =
      FirebaseFirestore.instance.collection('Cars');

  print('Loading...');

  try {
    QuerySnapshot querySnapshot = await _collectionRef.get();
    final allData = querySnapshot.docs.map((doc) => doc.data()).toList();
    print(allData);
  } catch (e) {
    print('Error: $e');
  } finally {
    print('Finished');
  }
}
