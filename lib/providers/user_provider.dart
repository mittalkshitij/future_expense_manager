import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:future_expense_manager/data/models/user_data.dart';

class UserProvider extends StateNotifier<UserData> {
  UserProvider() : super(UserData());
}