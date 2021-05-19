// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    //1. fixed-size types
    bool isReady;
    uint a;
    address recipient;
    bytes32 data;

    //2. variable-size types
    string name;
    bytes _data;
    uint[] amounts; // array of data (same type)
    mapping(uint => string) users; //associate array

    //3. user-defined data
    struct User {
        uint id;
        string name;
        uint[] friendIds;
    }

    enum Color {
        RED,
        GREEN,
        BLUE
    } //call eg: Color.RED
    
    
}