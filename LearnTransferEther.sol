// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LearnTransferEther{
    //two kinds of address
    // address to can use to call smart contract
    // address payable for transfer
    function foo(address payable to, uint amount) external {

        // to.transfer(100); wei uint in default
        // 1wei = 10 ^ -18 ether
        to.transfer(amount);
    }

    // receive ether
    // client call this function with sending ether
    function bar() external payable {
        // amount of ether to send when calling this function
        msg.value; 
        address(this).balance;
    }

    // fallback will be called if non existed function is call in smart contact
    // fallback() external payable{
    fallback() external{

    }

    receive() external payable {

    }
}