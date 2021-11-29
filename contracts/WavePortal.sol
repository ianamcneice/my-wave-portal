// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    address[] public wavers;

    constructor() {
        console.log("Yo yo, I am a contract and I am smart");
    }

    function getWaversLength() public view returns(uint count) {
        return wavers.length;
    }

    function wave() public {
        totalWaves += 1;
        console.log("%s has waved!", msg.sender);
        wavers.push(msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }
    
    function getAllWavers() public view returns (address[] memory) {
      console.log("Here is the list of everyone who has waved:\n");
      //console.log of array executed in run.js
      return wavers;
    }
    
}
