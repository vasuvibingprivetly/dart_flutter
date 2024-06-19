import 'dart:io';

// Product class
class Product {
  int pro_id;
  String pro_name;
  int pro_qty;
  double pro_price;

  Product(this.pro_id, this.pro_name, this.pro_qty, this.pro_price);
}

// Customer class
class Customer {
  int cust_id;
  String cust_name;
  String cust_contact;
  List<Product> cust_cart = [];

  Customer(this.cust_id, this.cust_name, this.cust_contact);
}

void main() {
  List<Customer> customers = [];

  while (true) {
    print("\nMenu:");
    print("1. Add a new customer");
    print("2. Add products to customer's cart");
    print("3. Calculate billing for a customer");
    print("4. Search customer by ID");
    print("5. Exit");
    stdout.write("Enter your choice: ");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        stdout.write("Enter customer ID: ");
        int custId = int.parse(stdin.readLineSync()!);
        stdout.write("Enter customer name: ");
        String custName = stdin.readLineSync()!;
        stdout.write("Enter customer contact: ");
        String custContact = stdin.readLineSync()!;
        customers.add(Customer(custId, custName, custContact));
        print("Customer added successfully!");
        break;
      case 2:
        stdout.write("Enter customer ID to add products: ");
        int custId = int.parse(stdin.readLineSync()!);

        Customer customer = customers.firstWhere((customer) => customer.cust_id == custId, orElse: () => Customer(0, "", ""));

        if (customer.cust_id != 0) {
          // Display categories
          print("\nCategories:");
          print("1. Fruits");
          print("2. Vegetables");
          print("3. Dairy");
          print("4. Beverages");

          stdout.write("Enter category number to view products: ");
          int categoryChoice = int.parse(stdin.readLineSync()!);

          // Display products based on category
          switch (categoryChoice) {
            case 1:
              print("\nProducts in Fruits:");
              print("1. Apple - Price: \$1.0 each");
              print("2. Banana - Price: \$1.2 each");
              print("3. Orange - Price: \$1.5 each");
              break;
            case 2:
              print("\nProducts in Vegetables:");
              print("1. Carrot - Price: \$0.8 each");
              print("2. Tomato - Price: \$1.0 each");
              print("3. Spinach - Price: \$1.2 each");
              break;
            case 3:
              print("\nProducts in Dairy:");
              print("1. Milk - Price: \$2.0 each");
              print("2. Cheese - Price: \$3.0 each");
              print("3. Yogurt - Price: \$1.5 each");
              break;
            case 4:
              print("\nProducts in Beverages:");
              print("1. Water - Price: \$1.0 each");
              print("2. Juice - Price: \$1.5 each");
              print("3. Soda - Price: \$2.0 each");
              break;
            default:
              print("Invalid category choice.");
              continue; // Continue to next iteration of while loop
          }

          // Add to cart
          stdout.write("Enter product number to add: ");
          int productChoice = int.parse(stdin.readLineSync()!);

          stdout.write("Enter product quantity: ");
          int quantity = int.parse(stdin.readLineSync()!);

          double price = 0.0;

          switch (productChoice) {
            case 1:
              price = 1.0;
              customer.cust_cart.add(Product(productChoice, "Apple", quantity, price));
              break;
            case 2:
              price = 1.2;
              customer.cust_cart.add(Product(productChoice, "Banana", quantity, price));
              break;
            case 3:
              price = 1.5;
              customer.cust_cart.add(Product(productChoice, "Orange", quantity, price));
              break;
            case 4:
              price = 0.8;
              customer.cust_cart.add(Product(productChoice, "Carrot", quantity, price));
              break;
            case 5:
              price = 1.0;
              customer.cust_cart.add(Product(productChoice, "Tomato", quantity, price));
              break;
            case 6:
              price = 1.2;
              customer.cust_cart.add(Product(productChoice, "Spinach", quantity, price));
              break;
            case 7:
              price = 2.0;
              customer.cust_cart.add(Product(productChoice, "Milk", quantity, price));
              break;
            case 8:
              price = 3.0;
              customer.cust_cart.add(Product(productChoice, "Cheese", quantity, price));
              break;
            case 9:
              price = 1.5;
              customer.cust_cart.add(Product(productChoice, "Yogurt", quantity, price));
              break;
            case 10:
              price = 1.0;
              customer.cust_cart.add(Product(productChoice, "Water", quantity, price));
              break;
            case 11:
              price = 1.5;
              customer.cust_cart.add(Product(productChoice, "Juice", quantity, price));
              break;
            case 12:
              price = 2.0;
              customer.cust_cart.add(Product(productChoice, "Soda", quantity, price));
              break;
            default:
              print("Invalid product choice.");
              continue; // Continue to next iteration of while loop
          }

          print("Product added to cart successfully!");
        } else {
          print("Customer with ID $custId not found.");
        }
        break;
      case 3:
        stdout.write("Enter customer ID to calculate billing: ");
        int custId = int.parse(stdin.readLineSync()!);

        Customer customer = customers.firstWhere((customer) => customer.cust_id == custId, orElse: () => Customer(0, "", ""));

        if (customer.cust_id != 0) {
          double total = 0.0;
          double discount = 0.0;
          double finalAmount = 0.0;

          // Calculate total amount
          for (Product product in customer.cust_cart) {
            total += product.pro_qty * product.pro_price;
          }

          // Apply discount
          if (total >= 500 && total < 1500) {
            discount = total * 0.10;
          } else if (total >= 1500 && total < 3500) {
            discount = total * 0.20;
          } else if (total >= 3500 && total < 6500) {
            discount = total * 0.25;
          } else if (total >= 6500) {
            discount = total * 0.30;
          }

          finalAmount = total - discount;

          // Display billing details
          print("\nBilling Details:");
          print("Customer ID: ${customer.cust_id}");
          print("Customer Name: ${customer.cust_name}");
          print("Customer Contact: ${customer.cust_contact}");
          print("Products Purchased:");
          for (Product product in customer.cust_cart) {
            print("  ${product.pro_name}, Quantity: ${product.pro_qty}, Price per unit: ${product.pro_price}");
          }
          print("Total Amount: ${total}");
          print("Discount Applied: ${discount}");
          print("Final Amount to Pay: ${finalAmount}");
        } else {
          print("Customer with ID $custId not found.");
        }
        break;
      case 4:
        stdout.write("Enter customer ID to search: ");
        int custId = int.parse(stdin.readLineSync()!);
        Customer searchedCustomer = customers.firstWhere((customer) => customer.cust_id == custId, orElse: () => Customer(0, "", ""));
        if (searchedCustomer.cust_id != 0) {
          print("\nCustomer Details:");
          print("Customer ID: ${searchedCustomer.cust_id}");
          print("Customer Name: ${searchedCustomer.cust_name}");
          print("Customer Contact: ${searchedCustomer.cust_contact}");
          print("Products Purchased:");
          for (Product product in searchedCustomer.cust_cart) {
            print("  ${product.pro_name}, Quantity: ${product.pro_qty}, Price per unit: ${product.pro_price}");
          }
        } else {
          print("Customer with ID $custId not found.");
        }
        break;
      case 5:
        print("Exiting program...");
        return;
      default:
        print("Invalid choice. Please enter a valid option.");
    }
  }
}
