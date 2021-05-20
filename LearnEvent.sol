// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LearnEvent {
    // push data from smart contract to user client

    // 1. declare event 
    event NewTrade (
        uint indexed date,
        address indexed from, // allow client to filter with this field, max 3 indexes
        address indexed to,
        uint amount
    );

    // 2. emit event
    function trade(address to, uint amount) external {
        // new solidity need emit keyword
        emit NewTrade(block.timestamp, msg.sender, to, amount);
    }

    // event cannot be read from smart contract, only 1 way: blockchain -> outside
    // event has lower gas cost compared to storage variable
}