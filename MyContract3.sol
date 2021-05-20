// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract MyContract3 {

    //private state that only access within current contract
    //default state visibility
    uint private a;

    uint internal c;
    uint public d;

    function foo() external view returns(uint) {
        uint b = a + 1;
        return b;
    }
}