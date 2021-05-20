// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract LearnControlArray {
    bool boolValue;
    
    function foo() external {
        // if(msg.sender == 100 && block.timestamp > 123456... || ){
        // }

        // if(!boolValue){
        // } 

        // for(uint i = 0; i < 10; i++){
        //     i = 1....9;
        // }

        // bool isOk = true;
        // while(isOk) {
        //     if(isOk == false){
        //         isOk = false;
        //         // continue;
        //         // break;
        //     }
        // }
    }


    //array
    //1. storage arrays
    //2. memory arrays
    //3. arrray arguments and return arrays from function

    //1. storage arrays
    uint[] myArray; //crud
    uint[2] myArray2; //fix size array

    function foo2() external {
        //create
        myArray.push(2);
        myArray.push(3);

        //read
        myArray[1];

        //update
        myArray[0] = 20;

        //delete
        delete myArray[1]; // after will become zero

        for(uint i = 0; i < myArray.length; i++){
            myArray[i];
        }
    }

    //2. memory arrays
    // declare with specific size and declare in function
    // memory arrays not save in blockchain
    function bar() external pure{
        uint[] memory newArray = new uint[](10);
        
        // newArray.push not working for memory array
        newArray[0] = 1;
        newArray[1] = 2;

        newArray[0];

        newArray[0] = 3;

        delete newArray[5];
    }

    //3. arrays in functions
    // accept array as argument
    // memory notation: 
    // - calldata - external
    // - memory - public
    // - memory - internal
    function fooBar(uint[] calldata myArg) external {
    }


}