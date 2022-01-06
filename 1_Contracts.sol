pragma solidity ^0.6.0;
//https://www.youtube.com/watch?v=pqxNmdwEHio&list=PLS5SEs8ZftgVnWHv2_mkvJjn5HBOkde3g
contract MyContract {
    //State variable
    //accessible outside curly brackets
    //gets recorded on blockchain
    string public myString = "Hello, world!";
    bytes32 public myBytes32 = "Hello";
    int public myInt = 1;
    uint public myUint = 1;
    uint256 public myUint256 = 1;
    uint8 public myUint8 = 1;
    address public myAddress = 0x5A0b54D5dc17e0AadC383d2db43B0a0D3E029c4c;
    // We'll cover arrays later
    // We'll cover mappings later

    struct MyStruct {
        uint myUint;
        string myString;
    }

    MyStruct public mystruct = MyStruct(1, "Hello, World!");

    // Local variable
    //Value is local variable here
    function getValue() public pure returns(uint) {
        uint value = 1;
        return value;
    }
}

//function variablename(Input parmeters) visibility behaviour returns(output parameter){} 

//visibility= public/private/internal/exxternal
//behaviour= pure/view/payable
//Payable= Changes the state of the blockchain
//view function= reads the blockchain; doesnt Changes
//pure= nt read/nt Change
