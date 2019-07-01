pragma solidity ^0.4.18;

contract Destroy {
    function() public payable {

    }

    // address account blank contract
    function des() public {
        selfdestruct(0x4cfda8e58f0b7717f61fe66b2685d6d71ccbb7ca);
    }
}