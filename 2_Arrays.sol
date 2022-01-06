pragma solidity ^0.6.0;

contract MyContract {
    // Arrays
    // An array is a list of informtion
    // 1. Numbers
    uint[] public uintArray = [1,2,3];
    // 2. Text
    string[] public stringArray = ['apple', 'banana', 'carrot'];
    // 3. Without value Initially--We can add value using functions as showcased below
    string[] public values;
    // 4.2 dimensional arrays--i.e. arrays with in Arrays
    uint[][] public array2D = [ [1,2,3], [4,5,6] ];

   
   function addValue(string memory _value) public {
        values.push(_value);
        //Push function= Takes value of (_value) and it pushes to  the end of the array (values).
   }
   
    function valueCount() public view returns(uint) {
        return values.length;
        // Length Function=Gives no of items of an array
    }
}


