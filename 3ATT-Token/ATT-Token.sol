// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

// Import ERC20 from OpenZeppelin
// import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract ATToken is ERC20{
     constructor () ERC20('AfricTrade Token','ATT') {
        _mint(msg.sender, 200 * (10 ** 18));
    }
}
