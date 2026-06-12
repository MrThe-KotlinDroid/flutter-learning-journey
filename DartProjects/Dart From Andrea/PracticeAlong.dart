class Account {
  Account({required this.AccountHolder, this.balance = 0});

  final String AccountHolder;
  double balance;

  void deposit(double amount) {
    balance += amount;
  }

  bool withdraw(double amount) {
    if (amount <= this.balance) {
      balance -= amount;
      return true;
    } else
      return false;
  }
}

void main() {
  var account1 = Account(AccountHolder: "Abrar");
  account1.deposit(100);
  print(account1.AccountHolder);
  print(account1.balance);
  account1.deposit(50);
  print(account1.balance);

  print(account1.withdraw(20));
  print(account1.withdraw(2000));
}
