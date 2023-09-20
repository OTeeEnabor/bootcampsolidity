
// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.18;



// create contract 
contract FifthContract {
    // set contract owner inside the smart contract as contract deploys
    constructor() {
        owner = msg.sender;
    }

    // create struct to model person data
    struct Person {
        uint _id;
        string firstName;
        string lastName;
        // max 17 attributes
    }
    // create a variable to track the number of people in array
    uint256 public peopleCount = 0;
    
    // create a mapping to map number to person
    mapping(uint => Person) public people;
 
    // create a function to increment the people count (internal)
    function incrementCount() internal {
        peopleCount +=1;
    }
    //  create the address of the owner
    address owner;

    // create a modifier to check if person is calling the function is the owner
    modifier isOwner() {
        require(msg.sender == owner);
        _;
    }
   
    //  create a function to add a person to the people array
    function addPerson(string calldata _firstName, string memory _lastName) 
    public
    isOwner
    {

        // increment count of people
        incrementCount();
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