// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract HelloSphinx {
    uint8 public myNumber;
    address public myAddress;

    constructor(uint8 _myNumber, address _myAddress) {
        myNumber = _myNumber;
        myAddress = _myAddress;
    }

    function increment() public {
        myNumber += 1;
    }

    function setNumber(uint8 _myNumber) public {
        myNumber = _myNumber;
    }
}
