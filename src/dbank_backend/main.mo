import Debug "mo:base/Debug";

actor DBank {
  var currentValue = 3000;
  currentValue := 300;

  let id = 2096;

  // Debug.print "Hello everyone";
  // Debug.print(debug_show (currentValue));
  // Debug.print(debug_show (id));

  func topUp() {
    currentValue += 1;
    Debug.print(debug_show(currentValue));
  };
  topUp();
};
