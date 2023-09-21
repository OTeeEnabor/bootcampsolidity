// SPDX-License-Identifier:MIT
pragma solidity 0.8.18;

contract SarchiCoin{
    // create a mapping to track token balances
     mapping(address => uint256) public balances;

    //  create number of tokens
    uint256 public sarchiCoins = 100000000; // 10 million coins
    // // create mapping to track sarchiCoins

    //  declare address where ether funds 
    // should be sent when sarchicoins are bought

    address payable wallet;

    constructor(address payable _wallet)  {
        wallet = _wallet;
    }

    //  create a function to increment balance
    function buySarchi() public payable{

        balances[msg.sender] +=1;

        sarchiCoins -=1;


        // transfer ether to wallet
        wallet.transfer(msg.value);
    }
}

