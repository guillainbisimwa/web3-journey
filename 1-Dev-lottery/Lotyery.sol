// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.19;

contract Lottery{

    address public owner;
    address  payable [] public players;

    constructor() {
        owner = msg.sender;
    }

    modifier ownerOnly {
        if(owner == msg.sender){
            _;
        }
    }

    function deposit()public payable{
        require(msg.value >= 1 ether);
        players.push(msg.sender);
    }

    function generateRandom() public view returns (uint){
        uint random =uint( keccak256(abi.encodePacked(now, block.difficulty, players.length)));
        return random;
    }

    function pickWinner() ownerOnly() public{
        uint genetated = generateRandom();
        uint index = genetated % players.length;

        address winner = players[index];

        winner.transfer(address(this).balance);

        players = new address payable [](0);
    }







}

