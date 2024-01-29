import ballerina/io;

function add(int a, int b) returns int {
  return a + b;
}

function apply(int a, int b, function (int, int) returns int fn) returns int {
  return fn(a, b);
}

public function main() {
  int result = apply(10, 20, add);
  io:println(result);
}