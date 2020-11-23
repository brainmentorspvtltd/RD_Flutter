abstract class Account {
  // Generic / Common Feature
  int id;
  String name;
  double balance;
  /*Account() {
    print("Account Parent COns Call");
    id = 1001;
    name = 'Ram';
    balance = 9999;
  }*/
  Account(int id, String name, double balance) {
    print("Account Parent COns Call");
    this.id = id;
    this.name = name;
    this.balance = balance;
    /*id = 1001;
    name = 'Ram';
    balance = 9999;
    */
  }
  Account.flexi({int id = 0, String name = ''}) {
    this.id = id;
    this.name = name;
  }
  // Named Constructor
  Account.takeAccount(int id) {
    this.id = id;
  }
  Account.anotherCons() {}
  void printDetails() {
    print('Id is $id Name is $name Balance is $balance');
  }

  void roi();
  /*void roi() {
    print("Common ROI 2%");
  }*/
}

class SavingAccount extends Account {
  int limit; // Special Feature
  //SavingAccount():super() {
  SavingAccount() : super(1001, "Ram", 8999) {
    // SavingAccount() : super.takeAccount(1001) {
    print("SavingAccount child Cons Call");
    limit = 1000;
  }
  @override
  void roi() {
    print("ROI Rec 4% ");
  }

  void limitOfTrans() {
    print("No of Trans in a Day is 5");
  }

  void doorToDoorService() {
    print("Collect Money from ur Place");
  }

  @override
  void printDetails() {
    super.printDetails();
    print("Limit is $limit");
  }
}

class CurrentAccount extends Account {
  int odLimit;
  CurrentAccount() : super(1001, "Ram", 9999) {
    odLimit = 10000;
  }

  @override
  void roi() {
    print("ROI Pay 5%");
  }

  void noLimit() {
    print("Get Money at Once no limit of Trans");
  }

  void printDetails() {
    print("ODLimit is $odLimit");
  }
}

// Upcasting
void caller(Account account) {
  account.printDetails();
  account.roi();
  // object belongs to which class
  if (account is SavingAccount) {
    // Downcasting
    SavingAccount sa = account as SavingAccount;
    sa.limitOfTrans();
    sa.doorToDoorService();
  } else if (account is CurrentAccount) {
    CurrentAccount ca = account as CurrentAccount;
    ca.noLimit();
  }
  print("###############################");
  //account.doorToDoorService();
}

void main() {
  // caller(new Account(1001, "Ram", 9999));
  caller(new SavingAccount());
  caller(new CurrentAccount());
  // Account account = SavingAccount();
  // account.printDetails();
  // account.roi();
  // //account.doorToDoorService();
  // //account.limitOfTrans();

  // account = CurrentAccount();
  // account.printDetails();
  // account.roi();
  //account.noLimit();
  /* SavingAccount sa = new SavingAccount();
  sa.printDetails();
  sa.roi();
  sa.doorToDoorService();
  sa.limitOfTrans();

  CurrentAccount ca = new CurrentAccount();
  ca.roi();
  ca.printDetails();
  ca.noLimit();
  */

  // sa.printSADetails();
}
