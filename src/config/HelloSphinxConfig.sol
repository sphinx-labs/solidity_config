// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import { HelloSphinxClient, GoodbyeSphinxClient } from "./client/HelloSphinxClient.sol";
import { SphinxConfig } from "./client/SphinxConfig.sol";
import { Network, UintInputWithDefault, UintInput, AddressInputWithDefault, AddressInput } from "./types/SphinxClientTypes.sol";

contract HelloSphinxConfig is SphinxConfig {
    address[] owners;
    uint threshold;
    address[] proposers;
    string managerVersion;
    Network[] networks;

    address immutable owner = 0x9fd58Bf0F2E6125Ffb0CBFa9AE91893Dbc1D5c51;

    mapping(Network => uint) storage chainIds;

    constructor () {
        owners.push(owner);
        proposers.push(owner);
        threshold = 1;
        managerVersion = "v0.2.3";
        networks.push(Network.ethereum);
        networks.push(Network.optimism);
        networks.push(Network.arbitrum);

        chainIds[Network.ethereum] = 1;
        chainIds[Network.bsc] = 56;
        chainIds[Network.avalanche] = 43114;
        chainIds[Network.polygon] = 137;
        chainIds[Network.arbitrum] = 42161;
        chainIds[Network.optimism] = 10;
        chainIds[Network.fantom] = 250;
    }

    function setup (Network _network) public {

    }

    function deploy(Network _network) public { 
        bytes32 salt = bytes32(0);
        
        HelloSphinxClient helloSphinxClient = new HelloSphinxClient();
        DifferentHelloSphinxClient differentHelloSphinxClient = new DifferentHelloSphinx();

        HelloSphinxClient helloSphinx;
        if (_network == Networks.FTM) {
            address differentHelloSphinxAddress = differentHelloSphinxClient.deploy(
                1, 
                address(0), 
                { salt: salt, networks: networks, referenceName: "HelloSphinx"}
            );
            helloSphinx = HelloSphinxClient(differentHelloSphinxAddress);
        } else {
            helloSphinx = helloSphinxClient.deploy(
                1, 
                address(0), 
                { salt: salt, networks: networks, referenceName: "HelloSphinx"}
            );
        }

        HelloSphinx singleNetworkSphinx = helloSphinxClient.deploy(
            2, 
            address(2), 
            { salt: salt, networks: [Network.ethereum], referenceName: "HelloSphinxEthereum"}
        );

        helloSphinx.setNumber(
            chainIds[_network],
            { networks: networks }
        );

        singleNetworkSphinx.increment{
            { networks: [Network.ethereum] }
        }
    }
}