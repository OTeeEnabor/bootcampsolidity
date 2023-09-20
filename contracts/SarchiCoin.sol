// SPDX-License-Identifier: MIT
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SarchiCoin{
    // declare state variable
    string name;
    mapping (address => uint256) public balances;

    // create function to mint 
    function mint() public {
        balances[msg.sender] += 1;
    }
}