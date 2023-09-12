// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import { SphinxConfig } from "../client/SphinxConfig.sol";
import { Network, DeployOptions } from "../client/types/SphinxClientTypes.sol";
import { SphinxClient } from "../client/SphinxClient.sol";
import { HelloSphinx } from "../client/HelloSphinx.sol";
import { SphinxUtils } from "../client/SphinxUtils.sol";

contract HelloSphinxConfig is SphinxConfig {
    address[] owners;
    uint threshold;
    address[] proposers;
    string managerVersion;
    Network[] networks;
    SphinxUtils utils;

    address immutable owner = 0x9fd58Bf0F2E6125Ffb0CBFa9AE91893Dbc1D5c51;

    mapping(Network => uint) chainIds;

    constructor () {
        utils = new SphinxUtils();
        owners.push(owner);
        proposers.push(owner);
        threshold = 1;
        managerVersion = "v0.2.3";
        networks = utils.networks(Network.ethereum, Network.optimism, Network.arbitrum);

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
    
        SphinxClient client = new SphinxClient({ 
            _owners: owners,
            _threshold: threshold
        });

        Network[] memory setOfNetworks = utils.networks(Network.ethereum);
        HelloSphinx helloSphinx = client.DeployHelloSphinx(
            chainIds[_network], 
            address(0), 
            DeployOptions({ salt: salt, networks: setOfNetworks, referenceName: "HelloSphinx" })
        );

        helloSphinx.increment();
    }
}