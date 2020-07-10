// Imagine a big integer that the whole world could share
// IN Crowd-Source project total amount can saved at one account


pragma solidity ^0.5.9; 
contract SimpleStorage {
    uint storedData;    //uint256

    function set(uint x) public {
        storedData = x;
    }

    // view functions ensure that they will not modify the state and returns only value
    function get() view public returns (uint) {
        return storedData;
    }
    
    function increment (uint n) public {
        storedData = storedData + n;
        return;
    }
    
    function decrement (uint n) public {
        storedData = storedData - n;
        return;
    }
    
}

 


