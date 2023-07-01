pragma solidity 0.8.15;

contract theBlockChainMessenger{
    
    uint public changeCounter;
    address public owner;
    string public theMessage;

    constructor() {
        owner = msg.sender;
    }

    function updateTheMessage(string memory _theMessage) public{
        if(msg.sender == owner){
            theMessage = _theMessage;
            changeCounter++;
        }
    }
}
