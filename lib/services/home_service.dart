import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import '../models/transactions_model.dart';

class HomeService {
  final CollectionReference _transactionsRef =
      FirebaseFirestore.instance.collection('transactions');

  Future<List<TransactionsModel>> getTransactions() async {
    try {
      final querySnapshot = await _transactionsRef.get();
      return querySnapshot.docs.map((doc) {
        return TransactionsModel.fromJson(doc.data() as Map<String, dynamic>);
      }).toList();
    } catch (e) {
      if (kDebugMode) {
        print("Error fetching transactions: $e");
      }
      return [];
    }
  }
}
