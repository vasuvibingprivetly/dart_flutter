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

class CartManager {

  List<Customer> customers;

  CartManager(this.customers);

  void addProductToCart(int custId) {
    Customer? customer = customers.firstWhere(
      (customer) => customer.cust_id == custId,
      orElse: () => Customer(0, "", ""),
    );

    if (customer.cust_id != 0) {
      print("\nCategories:\n");
      print("[1]... Fruits");
      print("[2]... Vegetables");
      print("[3]... Dairy");
      print("[4]... Beverages\n");

      stdout.write("--> Enter number to view products: ");
      int categoryChoice = int.parse(stdin.readLineSync()!);

      switch (categoryChoice) {
        case 1:
          print("\n[ Products in Fruits ]\n");
          print("[1]... Apple - Price: 100 ");
          print("[2]... Banana - Price: 120 ");
          print("[3]... Orange - Price: 150 ");
          break;
        case 2:
          print("\n[ Products in Vegetables ]\n");
          print("[1]... Carrot - Price: 80 ");
          print("[2]... Tomato - Price: 100 ");
          print("[3]... Spinach - Price: 120 ");
          break;
        case 3:
          print("\n[ Products in Dairy ]\n");
          print("[1]... Milk - Price: 120 ");
          print("[2]... Cheese - Price: 130 ");
          print("[3]... Yogurt - Price: 150 ");
          break;
        case 4:
          print("\n[ Products in Beverages] \n");
          print("[1]... Water - Price: 100 ");
          print("[2]... Juice - Price: 150 ");
          print("[3]... Soda - Price: 200 ");
          break;
        default:
          print("Invalid category choice...");
          return; // Exit method
      }

      // Add to cart
      stdout.write("\n--> Enter product number to add: ");
      int productChoice = int.parse(stdin.readLineSync()!);

      stdout.write("--> Enter product quantity: ");
      int quantity = int.parse(stdin.readLineSync()!);

      double price = 0.0;
      String productName = "";

      switch (productChoice) {
        case 1:
          price = 100;
          productName = "Apple";
          break;
        case 2:
          price = 120;
          productName = "Banana";
          break;
        case 3:
          price = 150;
          productName = "Orange";
          break;
        case 4:
          price = 80;
          productName = "Carrot";
          break;
        case 5:
          price = 100;
          productName = "Tomato";
          break;
        case 6:
          price = 120;
          productName = "Spinach";
          break;
        case 7:
          price = 120;
          productName = "Milk";
          break;
        case 8:
          price = 130;
          productName = "Cheese";
          break;
        case 9:
          price = 150;
          productName = "Yogurt";
          break;
        case 10:
          price = 100;
          productName = "Water";
          break;
        case 11:
          price = 150;
          productName = "Juice";
          break;
        case 12:
          price = 200;
          productName = "Soda";
          break;
        default:
          print("Invalid product choice...");
          return; 
      }

      customer.cust_cart.add(Product(productChoice, productName, quantity, price));
      print("\nProduct added to cart successfully!");
    } else {
      print("\n\n Customer with ID $custId not found.");
    }
  }
}

Customer? findCustomerById(List<Customer> customers, int custId) {
  for (Customer customer in customers) {
    if (customer.cust_id == custId) {
      return customer;
    }
  }
  return null;
}

void printBillingDetails(Customer customer, double total, double discount, double finalAmount) {

  print("Customer ID: ${customer.cust_id}");
  print("Customer Name: ${customer.cust_name}");
  print("Customer Contact: ${customer.cust_contact}");

  stdout.write("\n------------------------------------------------------------\n");
  stdout.write("ID\tName\t\tQty\tPrice\t\tTotal\n");
  stdout.write("------------------------------------------------------------\n");

  for (Product product in customer.cust_cart) {
    stdout.write("${product.pro_id}\t${product.pro_name.padRight(10)}\t${product.pro_qty.toString().padRight(5)}\t${product.pro_price.toStringAsFixed(2)}\t\t${(product.pro_qty * product.pro_price).toStringAsFixed(2)}\n");
  }

  stdout.write("------------------------------------------------------------\n");
  stdout.write("Total Amount:\t\t\t\t\t${total.toStringAsFixed(2)}\n");
  stdout.write("Discount Applied:\t\t\t\t${discount.toStringAsFixed(2)}\n");
  stdout.write("Final Amount:\t\t\t\t\t${finalAmount.toStringAsFixed(2)}\n");
  stdout.write("------------------------------------------------------------\n");
  stdout.write("---> 😊 THANK YOU FOR SHOPPING... VISIT AGAIN...!! 😊 <---\n");
  stdout.write("------------------------------------------------------------\n\n\n");
}
