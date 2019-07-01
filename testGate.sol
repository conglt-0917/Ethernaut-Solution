pragma solidity ^0.4.18;

contract TestGate {

  address public txOrigin;

  function TestGate(address _origin) public {
    txOrigin = _origin;
  }

  function convert() public view returns(bytes8) {
    return bytes8(uint16(txOrigin));
  }


  modifier gateThree(bytes8 _gateKey) {
    require(uint32(_gateKey) == uint16(_gateKey));
    require(uint32(_gateKey) != uint64(_gateKey));
    require(uint32(_gateKey) == uint16(tx.origin));
    _;
  }

  function enter(bytes8 _gateKey) public gateThree(_gateKey) returns (bool) {
    return true;
  }
}
