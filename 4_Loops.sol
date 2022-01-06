pragma solidity ^0.6.0;

contract MyContract {
    //(2) Declaring an array and making it public
    uint[] public numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    address public owner;
    
    constructor() public {
        owner = msg.sender;
    }

    //(3) declaring function to count even nos, declaring output as uint
    //(3) declaring function as public and view only
    function countEvenNumbers() public view returns (uint) {
        uint count = 0;
        ///(4) declaring variabe count and initialising as 0
        for(uint i = 0; i < numbers.length; i++) {
            //(4) for loop iterates the function until its condition is met
            //(4) start with i=0 and repeat the loop as long as i < numbers length and at the end of the loop increase i by 1

            if(isEvenNumber(numbers[i])) {
                count ++;
                //(5) for each i in the loop check if it is even using the already coded isEvenNumber function and if yes increase count by 1
                //(5) this if test is inside for loop
            }
        }
        
        return count;
    }

    function isEvenNumber(uint _number) public view returns(bool) {
    //(1) declaring _number as uint and the output as bool    
        if(_number % 2 == 0) {
            return true;
        } else {
            return false;
        }
    }

    function isOwner() public view returns(bool) {
        return(msg.sender == owner);
        //(6) This is same as following
        // if(msg.sender == owner) {
        //     return true;
        // } else {
        //     return false;
        // }
    }

}
