void calculateOccurrencesAndPrintProducts(List<int> inputList) {
  // List to store the products of each element with its count
  List<int> products = [];

  // Print statement indicating the start of the output for number of occurrences
  print("Number of occurrences:");

  // List to keep track of scanned numbers to avoid redundant counting
  List<int> scannedNumbers = [];

  // Iterate through each item in the input list
  for (int item in inputList) {
    // Variable to count the occurrences of the current item
    int count = 0;

    // Count the occurrences of the current item in the input list
    for (int compareValue in inputList) {
      if (item == compareValue) {
        count = count + 1;
      }
    }

    // Check if the current item has already been scanned
    bool isAlreadyScanned = false;
    for (int num in scannedNumbers) {
      if (item == num) {
        isAlreadyScanned = true;
        break;
      }
    }

    // If the current item hasn't been scanned yet, print its count and calculate its product
    if (!isAlreadyScanned) {
      // Add the current item to the list of scanned numbers
      scannedNumbers.add(item);

      // Print the count of the current item
      print('\t' + item.toString() + ': ' + count.toString());

      // Calculate the product of the current item with its count and add it to the products list
      products.add(item * count);
    }
  }

  // Format the products list for better display
  String formattedProducts = products.toString();
  formattedProducts = formattedProducts.replaceAll('[', '');
  formattedProducts = formattedProducts.replaceAll(']', '');

  // Print the products list
  print('Products: ' + formattedProducts);
}

void main() {
  // Input list containing integers
  const List<int> inputList = [1, 1, 4, 1, 5, 5, 3, 2, 5, 6, 8];
  
  // Call the function with the input list
  calculateOccurrencesAndPrintProducts(inputList);
}
