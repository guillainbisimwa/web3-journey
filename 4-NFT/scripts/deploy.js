
const hre = require('hardhat');


const main = async () => {

  const nftContact = await hre.ethers.deployContract("NFTee");

  // Wait for contract to be deployed
  await nftContact.waitForDeployment();

  // Print address of our deplyed contract in the console
  console.log('NFT Contract: ', nftContact.target)

};

main().then(()=> process.exit(0)).catch(
  (error)=> {
    console.error(error);
    process.exit(1);
  }
);
