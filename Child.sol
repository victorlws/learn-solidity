// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import './Parent.sol';
// import './Parent2.sol';

// contract Child is Parent, Parent2{
contract Child is Parent{

    //parent constructor will exec 1st before child
    constructor(uint initialData) public Parent(initialData) {
        //data = 10
    }

    function bar () external {
        foo();
        data++;
    }
}