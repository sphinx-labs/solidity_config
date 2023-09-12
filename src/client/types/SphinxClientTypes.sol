// SPDX-License-Identifier: MIT
pragma solidity >=0.7.4 <0.9.0;

enum Network { 
    ethereum, 
    optimism, 
    arbitrum,
    polygon,
    bsc,
    avalanche,
    fantom
}

struct DeployOptions {
    bytes32 salt;
    Network[] networks;
    string referenceName;
}

struct ActionOptions {
    Network[] networks;
}