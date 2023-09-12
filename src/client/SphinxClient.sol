// SPDX-License-Identifier: MIT
pragma solidity >=0.7.4 <0.9.0;

import { HelloSphinx } from "./HelloSphinx.sol";
import { DeployOptions } from "./types/SphinxClientTypes.sol";
import { SphinxUtils } from "./SphinxUtils.sol";

contract SphinxClient {
    address[] owners;
    uint threshold;

    event DeployedHelloSphinx(uint _myNumber, address _myAddress, DeployOptions options);
    event DeployedHelloSphinx(uint _myNumber, address _myAddress);

    constructor (address[] memory _owners, uint _threshold) {
        owners = _owners;
        threshold = _threshold;
    }

    function DeployHelloSphinx(uint _myNumber, address _myAddress, DeployOptions memory options) external returns (HelloSphinx) {
        // Calculate the address of the contract to be deployed and then return it wrapped in a HelloSphinx contract object
        address helloSphinxAddress = address(0);
        emit DeployedHelloSphinx(_myNumber, _myAddress, options);
        return HelloSphinx(helloSphinxAddress);
    }

    function DeployHelloSphinx(uint _myNumber, address _myAddress) external returns (HelloSphinx) {
        // Calculate the address of the contract to be deployed and then return it wrapped in a HelloSphinx contract object
        address helloSphinxAddress = address(0);
        emit DeployedHelloSphinx(_myNumber, _myAddress);
        return HelloSphinx(helloSphinxAddress);
    }
}