import 'dart:io';

class Product_details {
  late int Id;
  late String Name;
  late int Qty;
  late double Price;

  Product(this.Id, this.Name, this.Qty, this.Price);
}

class Customers {
  late int custId;
  late String custName;
  late int custContact;
  late List<Product> custCart = [];

  void setCustomerData() {
    stdout.write("Enter customer Id: ");
    custId = int.parse(stdin.readLineSync() ?? "0");
    stdout.write("Enter customer name: ");
    custName = stdin.readLineSync() ?? "empty";
    stdout.write("Enter customer number: ");
    custContact = int.parse(stdin.readLineSync() ?? "0");
  }

  void CustomerDetails() {
    print("\nCustomer ID: $custId");
    print("Customer Name: $custName");
    print("Customer Contact: $custContact");
    print("\nProducts in Cart:");
  }

  void Product() {
    print("\n1. Mobiles");
    print("2. Electronics");
    print("3. Clothes");
    print("4. Accessories");
    stdout.write("Enter your choice: ");
    int choice = int.parse(stdin.readLineSync() ?? "0");

    switch (choice) {
      case 1:
        mobile();
        break;
      case 2:
        electronics();
        break;
      case 3:
        clothes();
        break;
      case 4:
        accessories();
        break;
      default:
        print("Invalid choice");
    }
  }

  void mobile() {
    print("1. Apple 15 Pro Max...");
    print("2. Apple 15 pro...");
    print("3. Apple 15 plus...");
    print("4. Apple 15...");
    stdout.write("Enter your choice : ");
    int choice = int.parse(stdin.readLineSync() ?? "5");
    switch (choice) {
      case 1:
        print("\n\niPhone 15 pro max");
        print("₹1,55,000");
        break;
      case 2:
        print("\n\nApple iPhone 15 pro");
        print("₹1,25,000");
      case 3:
        print("\n\nApple iPhone 15 plus");
        print("₹82,000");
      case 4:
        print("\n\nApple iPhone 15 pro");
        print("₹70,000");
    }
  }

  void electronics() {
    print("1. A.C...");
    print("2. T.V...");
    print("3. Fridge...");
    print("4. Camera...");
    stdout.write("Enter your choice : ");
    int choice = int.parse(stdin.readLineSync() ?? "5");
    switch (choice) {
      case 1:
        print("\n\nA.C");
        print("₹1,00,000");
        break;
      case 2:
        print("\n\nT.V");
        print("₹50,000");
      case 3:
        print("\n\nFridge");
        print("₹82,000");
      case 4:
        print("\n\nCamera");
        print("₹50,000");
    }
  }

  void clothes() {
    print("1. Sweatshirt...");
    print("2. Jumper...");
    print("3. Cargo...");
    print("4. Polo...");
    stdout.write("Enter your choice : ");
    int choice = int.parse(stdin.readLineSync() ?? "5");
    switch (choice) {
      case 1:
        print("\n\nSweatshirt");
        print("₹3,000");
        break;
      case 2:
        print("\n\nJumper");
        print("₹2,000");
      case 3:
        print("\n\nCargo");
        print("₹2,500");
      case 4:
        print("\n\nPolo");
        print("₹3,500");
    }
  }

  void accessories() {
    print("1. Watch...");
    print("2. Locket...");
    print("3. Belt...");
    print("4. Perfum...");
    stdout.write("Enter your choice : ");
    int choice = int.parse(stdin.readLineSync() ?? "5");
    switch (choice) {
      case 1:
        print("\n\nSweatshirt");
        print("₹1,200");
        break;
      case 2:
        print("\n\nJumper");
        print("₹2,000");
      case 3:
        print("\n\nCargo");
        print("₹2,500");
      case 4:
        print("\n\nPolo");
        print("₹3,500");
    }
  }
}

void main() {

  Product_details = new Product_details();

  mobile();
  electronics();
  clothes();
  accessories();
}
