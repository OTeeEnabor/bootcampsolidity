
// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.18;

// create contract 
contract FourthContract {
    // create struct to model person data
    struct Person {
        uint _id;
        string firstName;
        string lastName;
        // max 17 attributes
    }
 // create a mapping to map number to person
    mapping(uint => Person) public people;
    // create a variable to track the number of people in array
    uint256 public peopleCount;
   
    //  create a function to add a person to the people array
    function addPerson(string calldata _firstName, string memory _lastName) public{

        // increment count of people
        peopleCount += 1;
        // create a person in memory
        Person memory person = Person({
            _id: peopleCount,
            firstName: _firstName,
            lastName: _lastName
        });
        // add person to mapping
        people[peopleCount] = person;
    }
}