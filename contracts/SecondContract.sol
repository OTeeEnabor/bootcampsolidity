// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.18;

// create contract 
contract SecondContract {


    //  declare global variable (state variable)
    string public constant value = "myValue";

    // create enum 
    enum State {Waiting, Ready, Active}

    // check the state the active state of contract
    // create a variable called state of type State
    State public state;

    // create a constructor to set default contract state to waiting
    constructor() {
        state = State.Waiting;
    }

    // create a function to activate the state of smart contract
    function activate() public {
        state = State.Active;
    }

    // create a function to check if contract is active
    function isActive() public view returns(bool){
        return state == State.Active;
    }
}