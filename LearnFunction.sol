// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract LearnFunction {
    // built-in variables
    //msg.sender // address of sender
    //msg.value  //ether send in transaction, 0 if only execute smart contract
    //now  //timestamp
    //block.timestamp //timestamp

    uint a;
    uint b;

    // Constructor code is only run when the contract is created
    constructor(uint _a, uint _b){
        a = _a;
        b = _b;
    }

    // function getter view only 
    function getValueA() external view returns(uint) {
        return a;
    }

    function setValueA(uint _a) external {
        a = _a;
    }

    //function visibility
    // private - only allow within contract with naming convention underscore prefix
    function _privateFoo() private view returns(uint) {
        return a;
    }

    function _privateFoo2() private pure returns(uint) {
        return 2;
    }

    //internal - less restrict, only call internally including inheritance scenario
    function _privateFoo3() internal pure returns(uint) {
        return 2;
    }

    //external - only from outside of contract
    function externalFoo4() external pure returns(uint) {
        return 2;
    }

    //public
    function publicFoo5() external pure returns(uint) {
        return 2;
    }
}