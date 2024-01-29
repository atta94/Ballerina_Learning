import ballerina/io;

type StructureOne record {|
  string param1;
  int param2;
|};

type StructureTwo record {|
  string param1;
  int param2;
|};

public function main() {
  StructureOne s1 = {
    param1: "ayesh",
    param2: 10
  };
  
  StructureTwo s2 = {
    param1: "name",
    param2: 10
  };
  
  io:println(s1 is StructureTwo);
  io:println(s2 is StructureOne);
}