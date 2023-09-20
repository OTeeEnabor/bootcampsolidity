// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.18;

// create contract 
contract FirstContract {

    // create constructor to set a default value for state variable
    constructor()  {
        value = "myValue";
    }

    //  declare global variable (state variable)
    string public value;
    
    // create function to read value from storage
    function retrieve() public  view returns (string memory){
        return value;
    }
    // create function to set new value 
    function store(string memory _value) public{
        value = _value;
    }
}