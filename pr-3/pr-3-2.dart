import 'dart:io';
import 'pr-3-2-class.dart';

void main() {
  List<Customer> customers = [];
  CartManager cartManager = CartManager(customers);
  int choice = 0;

  do {
    print("[1]... Add a new customer");
    print("[2]... Add products to customer's cart");
    print("[3]... Calculate billing for a customer");
    print("[4]... Search customer by ID");
    print("[5]... Exit");
    stdout.write("\n--> Enter your choice: ");
    choice = int.parse(stdin.readLineSync()?? "0");

    switch (choice) {
      case 1:
        stdout.write("\n--> Enter customer ID: ");
        int custId = int.parse(stdin.readLineSync()??"0");
        stdout.write("--> Enter customer name: ");
        String custName = stdin.readLineSync()?? "0";
        stdout.write("--> Enter customer contact: ");
        String custContact = stdin.readLineSync()?? "0";
        customers.add(Customer(custId, custName, custContact));
        print("Customer added successfully!\n\n");
        break;


      case 2:

        stdout.write("\n\n--> Enter customer ID to add products: ");
        int custId = int.parse(stdin.readLineSync()!);
        cartManager.addProductToCart(custId);
        break;


      case 3:
          stdout.write("\n--> Enter customer ID to calculate billing: ");
        int custId = int.parse(stdin.readLineSync()!);

        Customer? customer = findCustomerById(customers, custId);

        if (customer != null) {
          double total = 0.0;
          double discount = 0.0;
          double finalAmount = 0.0;

          for (Product product in customer.cust_cart) {
            total += product.pro_qty * product.pro_price;
          }

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

          printBillingDetails(customer, total, discount, finalAmount);
        } else {
          print("Customer with ID $custId not found.");
        }
        break;        

     
      case 4:
        stdout.write("Enter customer ID to search: ");
        int custId = int.parse(stdin.readLineSync()!);

        Customer? searchedCustomer = findCustomerById(customers, custId);

        if (searchedCustomer != null) {
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
        break;
     
     
      default:
        print("Invalid choice. Please enter a valid option.");
    }
  } while (choice != 5);
}
