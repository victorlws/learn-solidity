// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Parent {
    uint data;

    constructor(uint initialData) public {
        data = initialData;
    }

    function foo() internal{

    }
}