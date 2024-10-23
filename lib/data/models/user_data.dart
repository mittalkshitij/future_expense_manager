import 'package:hive_flutter/adapters.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
@HiveType(typeId: 1)
class UserData {
  String? userId;
  String? userName;
  String? email;
  String? password;
  String? transcation;
  String? userCurrency;
  String? monthlyLimit;
  String? userBalance;
  String? userIncome;
  String? userExpense;

  UserData({this.email,this.monthlyLimit,this.password,this.transcation,this.userBalance,this.userCurrency,this.userExpense,this.userId,this.userIncome,this.userName});
}
