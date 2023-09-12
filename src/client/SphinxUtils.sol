// SPDX-License-Identifier: MIT
pragma solidity >=0.7.4 <0.9.0;

import { Network } from "./types/SphinxClientTypes.sol";

contract SphinxUtils {
    function networks(Network a) public pure returns (Network[] memory arr) {
        arr = new Network[](1);
        arr[0] = a;
    }

    function networks(Network a, Network b) public pure returns (Network[] memory arr) {
        arr = new Network[](2);
        arr[0] = a;
        arr[1] = b;
    }

    function networks(Network a, Network b, Network c) public pure returns (Network[] memory arr) {
        arr = new Network[](3);
        arr[0] = a;
        arr[1] = b;
        arr[2] = c;
    }

    function networks(Network a, Network b, Network c, Network d) public pure returns (Network[] memory arr) {
        arr = new Network[](3);
        arr[0] = a;
        arr[1] = b;
        arr[2] = c;
        arr[3] = d;
    }

    function networks(Network a, Network b, Network c, Network d, Network e) public pure returns (Network[] memory arr) {
        arr = new Network[](3);
        arr[0] = a;
        arr[1] = b;
        arr[2] = c;
        arr[3] = d;
        arr[4] = e;
    }

    function networks(Network a, Network b, Network c, Network d, Network e, Network f) public pure returns (Network[] memory arr) {
        arr = new Network[](3);
        arr[0] = a;
        arr[1] = b;
        arr[2] = c;
        arr[3] = d;
        arr[4] = e;
        arr[5] = f;
    }

    function networks(Network a, Network b, Network c, Network d, Network e, Network f, Network g) public pure returns (Network[] memory arr) {
        arr = new Network[](3);
        arr[0] = a;
        arr[1] = b;
        arr[2] = c;
        arr[3] = d;
        arr[4] = e;
        arr[5] = f;
        arr[6] = g;
    }

    function networks(Network a, Network b, Network c, Network d, Network e, Network f, Network g, Network h) public pure returns (Network[] memory arr) {
        arr = new Network[](3);
        arr[0] = a;
        arr[1] = b;
        arr[2] = c;
        arr[3] = d;
        arr[4] = e;
        arr[5] = f;
        arr[6] = g;
        arr[7] = h;
    }

    function networks(Network a, Network b, Network c, Network d, Network e, Network f, Network g, Network h, Network i) public pure returns (Network[] memory arr) {
        arr = new Network[](3);
        arr[0] = a;
        arr[1] = b;
        arr[2] = c;
        arr[3] = d;
        arr[4] = e;
        arr[5] = f;
        arr[6] = g;
        arr[7] = h;
        arr[8] = i;
    }

    function networks(Network a, Network b, Network c, Network d, Network e, Network f, Network g, Network h, Network i, Network j) public pure returns (Network[] memory arr) {
        arr = new Network[](3);
        arr[0] = a;
        arr[1] = b;
        arr[2] = c;
        arr[3] = d;
        arr[4] = e;
        arr[5] = f;
        arr[6] = g;
        arr[7] = h;
        arr[8] = i;
        arr[9] = j;
    }

    function networks(
        Network a, 
        Network b, 
        Network c, 
        Network d, 
        Network e,
        Network f, 
        Network g, 
        Network h, 
        Network i,
        Network j,
        Network k
    ) public pure returns (Network[] memory arr) {
        arr = new Network[](3);
        arr[0] = a;
        arr[1] = b;
        arr[2] = c;
        arr[3] = d;
        arr[4] = e;
        arr[5] = f;
        arr[6] = g;
        arr[7] = h;
        arr[8] = i;
        arr[9] = j;
        arr[10] = k;
    }

    function networks(
        Network a, 
        Network b, 
        Network c, 
        Network d, 
        Network e,
        Network f, 
        Network g, 
        Network h, 
        Network i,
        Network j,
        Network k,
        Network l
    ) public pure returns (Network[] memory arr) {
        arr = new Network[](3);
        arr[0] = a;
        arr[1] = b;
        arr[2] = c;
        arr[3] = d;
        arr[4] = e;
        arr[5] = f;
        arr[6] = g;
        arr[7] = h;
        arr[8] = i;
        arr[9] = j;
        arr[10] = k;
        arr[11] = l;
    }
}