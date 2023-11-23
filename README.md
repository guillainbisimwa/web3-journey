# web3-journey

## 1 Lottery Smart Contract

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
