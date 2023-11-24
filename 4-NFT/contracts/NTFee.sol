// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

// Use console.log
import "hardhat/console.sol";

// Import the openzepplin contracts
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract NFTee is ERC721 {
   
   constructor() ERC721('AfricTrade NFT','ATT-NFT'){
    _mint(msg.sender, 1);
    _mint(msg.sender, 2);
    _mint(msg.sender, 3);
   }
}
