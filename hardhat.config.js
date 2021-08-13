/**
 * @file hardhat configuration
 * @version 0.1.0
 * @license MIT
 */
require('@nomiclabs/hardhat-ethers');
require('dotenv').config();

module.exports = {
  solidity: "0.6.12",
  settings: {
    metadata: {
       bytecodeHash: "none",
    },
    optimizer: {
      enabled: true,
      runs: 200,
    },
  },
  networks: {
    hardhat: {
      forking: {
        url: `https://eth-mainnet.alchemyapi.io/v2/${process.env.ALCHEMY_API_KEY}`,
        blockNumber: 12725152,
      },
    },
  },
};
