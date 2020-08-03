//Greeting message chnages depeding upon call sender of function.
pragma solidity ^0.5.0;

contract Greeter {
    string greeting;
    address owner;

    modifier onlyOwner {
        require(isOwner(), "Only owner can do that!");
        _;
    }
    
    constructor(string memory _greeting) public {
        greeting = _greeting;
        owner = msg.sender;
    }

    //checks if call sender is owner or not 
    function sayHello() public view returns(string memory) {
        if (isOwner()) {
            return "Hey Owner!";
        } 
		else {
            return greeting;
        }
    }

    //Owner can set new Greeting message for other
    function setGreeting(string memory _newGreeting) public onlyOwner {
        greeting = _newGreeting;
    }
    
    function isOwner() view private returns(bool) {
        return msg.sender == owner;    
    }
}
