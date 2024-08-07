import 'expense.dart';
import 'check_null_function.dart';

class Budget {
  final int total;
  final List<Expense> expenses;

  Budget({required this.expenses, required this.total});

  factory Budget.fromJson(Map<String, dynamic> json) {
    return Budget(
        expenses: 
        json["expense"] ,
         total: checkNull(value: json["total"], title: "total"));
  }

  Map<String, dynamic> toJson(){
    return{
      "total": total,
        "expenses": expenses 
    };
  }
}
