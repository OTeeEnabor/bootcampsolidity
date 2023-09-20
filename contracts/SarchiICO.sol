// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
// import token from SarchiCoin
import {SarchiCoin} from "/SarchiCoin.sol";

contract SarchICO {
    // address of token
    address public token;
    //  create a constructor to set the value for the coin address
    constructor (address payable _wallet, SarchiCoin _coin) {
        wallet = _wallet;
        coin = _coin;
    }
    // define events - blockchains are aynchronous in nature
    event SarchiPurchase(
        address _buyer,
        uint256 _amount
    );
    // create mapping to track token balances
    mapping(address => uint256) public balances;
        // declare where ether funds should be sent when sarchi token is bought by an account
    address payable wallet;

    // use constructor to set wallet address inside the funcntion
    constructor(address payable _wallet) {
        wallet = _wallet;
    }



    // create buy token function to increment balamces
    function buySarchi() public payable{
        SarchiCoin _coin = SarchiCoin(address(coin));
        _coin.mint();
        wallet.transfer(msg.value);

        emit SarchiPurchase(msg.sender,1);
    }
    // create fallback function for when an account sends Ether to a smart contravt
    function() external payable {
        buySarchi();
    }


}