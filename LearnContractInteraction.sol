// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import 'ContractB.sol';

contract LearnContractInteraction{
    //1. call function of other contract
    //2. import keyword
    //3. contract interface
    //4. error propagation
    
    //1, interface of B => B
    //2. address of B

    address addressB;

    function setAddressB(address _addressB) external{
        addressB = _addressB;
    }

    function callHelloWorld() external view returns(string memory) {
        InterfaceB b = InterfaceB(addressB);
        b.helloWord();
    }
}

