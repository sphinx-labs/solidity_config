// SPDX-License-Identifier: MIT
pragma solidity >=0.7.4 <0.9.0;

import { Network, ActionOptions } from "./types/SphinxClientTypes.sol";

contract HelloSphinx {
    event CallSetNumber(string name, uint8 _myNumber, ActionOptions options);
    event CallSetNumber(string name, uint8 _myNumber);
    event CallIncrement(string name, ActionOptions options);
    event CallIncrement(string name);

    constructor () {}

    function setNumber(uint8 _myNumber, ActionOptions memory options) external {
        emit CallSetNumber("setNumber", _myNumber, options);
    }

    function setNumber(uint8 _myNumber) external {
        emit CallSetNumber("setNumber", _myNumber);
    }

    function increment(ActionOptions memory options) external {
        emit CallIncrement("increment", options);
    }

    function increment() external {
        emit CallIncrement("increment");
    }
}