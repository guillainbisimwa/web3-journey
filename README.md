# web3-journey

## 1. Lottery Smart Contract

This Solidity smart contract implements a simple lottery system on the Ethereum blockchain. Participants can deposit a minimum amount of ether to join the lottery, and the contract owner has the ability to randomly select a winner from the pool of participants. The selected winner receives the total balance of the contract.

### Features

- **Deposit Functionality:** Participants can deposit a minimum of 1 ether to enter the lottery.

- **Random Winner Selection:** The contract owner can use the `pickWinner` function to randomly select a winner from the pool of participants.

- **Transparency:** The contract uses a pseudo-random number generation method based on the current timestamp, previous block hash, and the number of participants to ensure fairness in selecting the winner.

### Usage

1. **Deployment:** Deploy the smart contract to the Ethereum blockchain.

2. **Deposit:** Participants can use the `deposit` function to deposit funds and join the lottery.

3. **Pick Winner:** The contract owner, and only the owner, can use the `pickWinner` function to randomly select a winner and transfer the total balance of the contract to the winner.

### Smart Contract Details

- **Contract Owner:** The address that deploys the contract becomes the owner, with exclusive access to certain functions.

- **Deposit Requirements:** Participants must deposit a minimum of 1 ether to enter the lottery.

- **Random Number Generation:** The `generateRandom` function uses a combination of the current timestamp, previous block hash, and the number of participants to generate a pseudo-random number.


##  2. LearnWeb3 First dApp Documentation

This documentation provides step-by-step instructions to set up and run the LearnWeb3 First dApp, which consists of a simple webpage and a smart contract on the Sepolia test network.

### Introduction

The 2dApp is a decentralized application (dApp) that allows users to set or get their mood using a simple webpage. The dApp interacts with a smart contract deployed on the Sepolia test network. Users can set their mood, retrieve their mood, and view the result on the webpage.

---

### 2. Files Overview

The project includes two main files:

#### a. `index.html`
This file contains the HTML and JavaScript code for the webpage. It includes functionality to set and get the mood using the connected smart contract.

#### b. `Mood.sol`
This file contains the Solidity code for the smart contract named `Mood`. It includes functions to set and get the mood.

---

### 3. Smart Contract

```solidity
// SPDX-License-Identifier: MIT 
pragma solidity ^0.7.4;

contract Mood {
    string mood;

    function setMood(string memory _mood) public {
        mood = _mood;
    }

    function getMood() public view returns (string memory) {
        return mood;
    }
}
```

This Solidity smart contract allows users to set and get their mood. It has two functions: `setMood` to set the mood and `getMood` to retrieve the current mood.

---

### 4. Prerequisites

Before running the LearnWeb3 First dApp, ensure you have the following prerequisites:

- MetaMask installed and set up
- MetaMask configured for the Sepolia test network
- Sepolia Testnet ETH from the Sepolia Faucet
- A code editor (e.g., Visual Studio Code)
- Node.js installed (LTS version recommended)
- Lite-server installed (`npm install -g lite-server`)

---

### 5. Installation and Setup

1. Open the project in your code editor.

1. Open a terminal and install lite-server:

   ```bash
   npm install -g lite-server
   ```

1. Start the lite-server:

   ```bash
   lite-server
   ```

---

### 6. Testing the 2dApp

1. Open MetaMask and ensure it is connected to the Sepolia test network.

2. Visit the lite-server URL provided in the terminal (usually http://localhost:3000) in your web browser.

3. Use the provided input field and buttons on the webpage to set and get your mood.

4. Interact with the smart contract on Sepolia Testnet through MetaMask.

## 4 - NFT

# NFTee: Create Your Own NFT Contract

## Overview

This code provides a step-by-step tutorial on how to create a basic NFT (Non-Fungible Token) contract on the Ethereum network. Check here the process of writing the Solidity contract code, deploying it to a test network using Hardhat, and additional setup instructions.

### Prerequisites

Before you begin, make sure you have the following prerequisites installed and set up:

- [MetaMask](https://metamask.io/) installed and configured.
- [Node.js](https://nodejs.org/) installed (LTS version recommended).

## Setting up Hardhat

To build the smart contract, we use Hardhat, an Ethereum development environment. Follow these steps to set up your Hardhat project:

1. Open a terminal and navigate to the project folder.
2. Initialize a Node.js project and install Hardhat:
   ```bash
   npm init --yes
   npm install --save-dev hardhat @nomicfoundation/hardhat-toolbox
   ```

Run the interactive CLI to set up your project:

```bash
npx hardhat
Select "Create a JavaScript Project" and answer additional questions.
```
Installing OpenZeppelin Contracts
Install OpenZeppelin Contracts, which provides templates for NFT Contracts:

```bash
npm install --save-dev @openzeppelin/contracts
```
Writing the NFT Contract
Create a new Solidity file (e.g., NFTee.sol) inside the contracts folder 


Compile the contract:


```bash
npx hardhat compile

```
Configuring the Network
Create a `.env` file with your Quicknode RPC URL and private key:


```bash
QUICKNODE_RPC_URL="your_quicknode_rpc_url"
PRIVATE_KEY="your_private_key"

```

Deploying Your Contract
Deploy your contract to the Sepolia Test Network:


```bash
npx hardhat run scripts/deploy.js --network sepolia

```

## Getting Started

1. Clone the repository:

   ```bash
   git clone https://github.com/guillainbisimwa/web3-journey.git
   cd web3-journey
   ```

2. Deploy the smart contract using a tool like Remix or Truffle.

3. Interact with the contract by depositing funds and picking winners.


## Contributing

This project was created as part of the My WEB3 journey; contributing is accepted.

Feel free to check the [issues page](github.com/guillainbisimwa/web3-journey/issues).

## Author

👤 **Guillain Bisimwa**

- Github : [@guillainbisimwa](https://github.com/guillainbisimwa)
- Twitter : [@gullain_bisimwa](https://twitter.com/gullain_bisimwa)
- Linkedin : [guillain-bisimwa](https://www.linkedin.com/in/guillain-bisimwa-8a8b7a7b/)

### Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- [Vinit Verma](https://www.linkedin.com/in/vinit-verma-095a2a7a)
- [Learnweb3.io/](https://learnweb3.io/)

## License

This smart contract is open-source and distributed under the [MIT License](LICENSE).
