pragma solidity ^0.5.0;

contract Checker {
    address owner;
    
    constructor() public {
        owner = msg.sender;    
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
    
    function getBalanceOfContract() public view returns(uint) {
        return address(this).balance;
    }
    
    function getBalanceOfOwner() public view onlyOwner returns(uint){
        return owner.balance;
    }
    
    function getBalanceOfSender() public view returns(uint) {
        return msg.sender.balance;
    }
    
   
    function getAddressOfOwner() public view returns(address) {
        return owner;    
    }
     
    function getAddressOfSender() public view returns(address) {
        return msg.sender;
    }
}
