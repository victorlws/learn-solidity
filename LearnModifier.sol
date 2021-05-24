// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LearnModifier {
    // 1. modifier syntax
    // 2. passing arguments
    // 3. chaining modifiers
    // 4. example for access control

    address admin;

    //when calling foo function, modifier will exec 1st
    // modifier -> modifier2 -> foo
    function foo(uint a) external myModifier(a) myModifier2(a) {
        //do some stuff
    }

    function bar(uint a) external onlyAdmin() {
        //do some stuff
    }

    // by default only can call modifier from internal
    modifier myModifier(uint a) {
        require(a ==10, "my error msg");
        _;
    }

    modifier myModifier2(uint a) {
        require(a ==10, "my error msg");
        _;
    }

    modifier onlyAdmin() {
        require(msg.sender ==admin, "only admin");
        _;
    }
}