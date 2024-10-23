import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
@HiveType(typeId: 0)
class Expenses {
  String? username;
  int? expense;
  String? typeOfExpense;
  String? date;
  String? notes;
  String? transacationCategory;
  String? transcationAmount;

  Expenses({this.date, this.expense, this.notes, this.typeOfExpense, this.username});
}
