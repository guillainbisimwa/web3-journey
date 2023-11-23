// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.19;

contract Lottery{

    address public owner;
    address  payable [] public players;

    constructor() {
        owner = msg.sender;
    }

    function deposit()public payable{
        require(msg.value >= 1 ether);
        players.push(msg.sender);
    }

    

}

