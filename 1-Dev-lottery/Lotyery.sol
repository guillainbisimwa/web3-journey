// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Lottery {
    address public owner;
    address payable[] public players;

    constructor() {
        owner = msg.sender;
    }

    modifier ownerOnly() {
        if (owner == msg.sender) {
            _;
        }
    }

    function deposit() public payable {
        require(msg.value >= 1 ether, "Minimum deposit is 1 ether");

        // Use a temporary variable to store the new address
        address payable newPlayer = payable(msg.sender);

        // Push the new address into the array
        players.push(newPlayer);
    }

    function generateRandom() public view returns (uint) {
        uint random = uint(
            keccak256(abi.encodePacked(block.timestamp, block.prevrandao, players.length))
        );
        return random;
    }

    function pickWinner() public ownerOnly {
        uint genetated = generateRandom();
        uint index = genetated % players.length;

        address payable winner = players[index];

        winner.transfer(address(this).balance);

        players = new address payable[](0);
    }
}
