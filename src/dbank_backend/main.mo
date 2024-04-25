import Debug "mo:base/Debug";
import Time "mo:base/Time";

actor DBank {
  stable var currentValue = 3000;
  type Time = Int;

  let startTime = Time.now();
  Debug.print(debug_show(startTime));

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

  public query func checkBalance() : async Nat {
    return currentValue;
  };

};
