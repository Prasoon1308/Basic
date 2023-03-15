// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Counter {
    string public name;
    uint256 public count;

    constructor(string memory initialName, uint256 initialCount) {
        name = initialName;
        count = initialCount;
    }

    function increment() public returns (uint256 newCount) {
        return count++;
    }

    function decrement() public returns (uint256 newCount) {
        return count--;
    }

    function getCount() public view returns (uint256) {
        return count;
    }

    function setName(
        string memory _newName
    ) public returns (string memory newName) {
        name = _newName;
        return name;
    }

    function getName() public view returns (string memory currentName) {
        return name;
    }
}
