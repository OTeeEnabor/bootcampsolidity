// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.18;

// create contract 
contract ThirdContract {
    // create struct to model person data
    struct Person {
        string firstName;
        string lastName;
        // max 17 attributes
    }
    // create an array to store a multiple persons
    Person[] public people;
    // create a variable to track the number of people in array
    uint256 public peopleCount;

    // create a function to add a person to the people array
    function addPerson(string calldata _firstName, string memory _lastName) public{
        // create a person in memory
        Person memory person = Person({
            firstName: _firstName,
            lastName: _lastName
        });
        // add person to list
        people.push(person);
        // increment count of people
        peopleCount += 1;
    }
}