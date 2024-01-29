import ballerina/io;

function printValueType(any value) {
  if (value is int || value is float || value is decimal) {
    io:println("Value is Number");
  } else if (value is string) {
    io:println(string`Value is a String, and it is ${value.length()} characters long`);
  } else {
    io:println("Could not identify the value type.");
  }
}

public function main() {
  printValueType(10);
  printValueType("This is a simple string");
}