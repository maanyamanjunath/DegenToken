# DegenToken

DegenToken is an ERC20 token smart contract built on the Ethereum blockchain. It implements basic functionalities for managing and transferring tokens, along with additional features such as token minting by the contract owner and token burning by token holders.

## Description

This Solidity smart contract deploys an ERC20 token called "Degen" with the symbol "DGN". It also includes functionalities for token minting, token burning, and a simple redeem shop where token holders can exchange tokens for items.



## Getting Started
An account on MetaMask with a few tokens to use later

##Prerequisites
To interact with this contract, you need a wallet and some tokens to cover transaction fees.

### Installing

To deploy the contract, follow these steps:

Install the required dependencies by running: npm install @openzeppelin/contracts

Compile the contract by running: npx hardhat run scripts/deploy.js --network fuji

Verify it by run: npx hardhat verify {address} --network fuji

Run the newtwork on remix and deploy it using injected provider connected to your account on metamask

Check on snowtrace after searching the address you received

### usage

*Once deployed, users can:

Mint new tokens: Only the contract owner can mint new tokens using the mint function.
Transfer tokens: Users can transfer tokens to other addresses using standard ERC20 transfer functions.
Burn tokens: Token holders can burn their own tokens using the burn function.
Redeem items: Token holders can redeem items from the shop using the redeem function, which requires a specified amount of tokens based on the item's cost.



## Authors


ex. Geetha Manjunath

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
