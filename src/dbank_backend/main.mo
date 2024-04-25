import Debug "mo:base/Debug";
import Nat "mo:base/Nat";
import Int "mo:base/Int";

actor DBank {
  stable var currentValue = 3000;
  // currentValue := 300;

  // let id = 2096;

  // Debug.print "Hello everyone";
  // Debug.print(debug_show (currentValue));
  // Debug.print(debug_show (id));

  public func topUp(amount : Nat) {
    currentValue += amount;
    Debug.print(debug_show (currentValue));
  };

  public func withdraw(amount : Nat) {
    let tempValue : Int = currentValue - amount;
    if (tempValue >= 0) {
      currentValue -= amount;
      Debug.print(debug_show (currentValue));
    } else {
      Debug.print "Value getting less then 0";
    };
  };
  // topUp();

  public query func checkBalance(): async Nat {
    return currentValue;
  };

};
