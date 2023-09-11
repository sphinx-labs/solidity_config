// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import { Sphinx } from "@sphinx/Sphinx.sol";
import { Test } from "forge-std/Test.sol";
import { HelloSphinx } from "../src/HelloSphinx.sol";

contract HelloSphinxTest is Sphinx, Test {
    HelloSphinx firstContract;
    HelloSphinx secondContract;

    // Path from the project root to the Sphinx config file to deploy
    string configPath = "sphinx/HelloSphinx.config.ts";

    string projectName = "MyProject";

    function setUp() public {
        // Deploys the contracts in the project
        deploy(configPath, vm.rpcUrl("anvil"));

        // Gets the deployed contracts
        firstContract = HelloSphinx(getAddress(configPath, "MyFirstContract"));
        secondContract = HelloSphinx(getAddress(configPath, "MySecondContract"));
    }

    function testFirstConstructor() public {
        assertEq(firstContract.myNumber(), 1);
        assertEq(address(firstContract), firstContract.myAddress());
    }

    function testSecondConstructor() public {
        assertEq(secondContract.myNumber(), 2);
        assertEq(address(secondContract), secondContract.myAddress());
    }

    function testIncrementFirstContract() public {
        firstContract.increment();
        assertEq(firstContract.myNumber(), 2);
    }

    function testIncrementSecondContract() public {
        secondContract.increment();
        assertEq(secondContract.myNumber(), 3);
    }
}
