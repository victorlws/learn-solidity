// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LearnErrorHandler {
    // 1. what happen when there is an error?
    // 2. throw
    // 3. revert()
    // 4. require()
    // 5. assert()
    // 6. error in other contracts

    uint a;

    function foo() external {
        a = 10;
        // if error found
        // a will be reverted to initial state, in this case 0;


        // solidity 0.4 - 0.5 will using throw keyword
        // throw

        // new solidity will using revert

        if(a == 10) {
            revert('this is why it reverts');
        }

        // validation
        require(a== 10, 'this is why it reverts');
        assert(a!=10); // less using
        
    }

    function willThrow() external pure {
        require(true == false, 'because reasons');
    }


    function willThrowInOtherContract() external {
        B b = new B();
        // b.bar(); // in this case, contract B will revert operation in this smart contract

        address(b).call(abi.encodePacked("bar()")); // will return false instead of revert
    }
}

contract B {
    function bar() external pure {
        revert('because other reasons');
    }
}