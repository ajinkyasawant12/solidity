pragma solidity ^0.5.0; 

contract Bidder {
    
    string public name;
    uint public bidAmount;
    bool public  eligible;
    uint constant minBid = 1000;  //set minimum amount to start
     
    function setName(string memory nm) public {
        name = nm;
        
    }
    
    function setBidAmount(uint x) public {
        bidAmount  = x;         //amount given by user
    }
  
    //checks if user is eligible for Auction
    function determineEligibility() public {
        if (bidAmount >= minBid ) eligible = true;
        else eligible = false;
    }
}
