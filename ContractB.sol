// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

abstract contract InterfaceB{
    function helloWord() virtual external pure returns(string memory);
    function foo() virtual external;
}

contract ContractB{
    function helloWord() external pure returns(string memory) {
        return 'helloWord';
    }

    function foo() external{

    }
}