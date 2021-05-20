// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract LearnMapping {
    //1. declare mappings
    //2. CRUD
    //3. default values
    //4. Exotic mapping 1: nested mappings
    //5. Exotic mapping 2: array inside mapping

    //1. declare mappings
    // mapping(key => value) name
    mapping(address => uint) balances;
    mapping(address => mapping(address => bool)) approved;
    mapping(address => uint[]) scores;

    function foo(address spender) external {
        //2 -Add
        balances[msg.sender] = 100;
        //2 -Read
        balances[msg.sender];
        //2 - update
        balances[msg.sender] = 50;
        //2 - delete
        delete balances[msg.sender];

        //3 - Default values
        // default value that do not exist 
        // balances['someaddressthatdonotExist'] => 0

        //4 - exotic mapping 1 
        approved[msg.sender][spender] = true;

        approved[msg.sender][spender];

        approved[msg.sender][spender] = false;

        delete approved[msg.sender][spender];

        //5 - exotic mapping 2
        // for mapping there is pre-created array for this case, we do not need to declare new array
        // scores[msg.sender] = new uint[](2); 

        scores[msg.sender].push(1);
        scores[msg.sender].push(2);

        scores[msg.sender][0];

        scores[msg.sender][0] = 10;
    
        delete scores[msg.sender][0];
        
    }
}