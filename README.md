# WearFit

A Leading Decentralized Fitness ecosystem integrating AI, IoT, and tokenized incentives.
## Project Structure

The project consists of the following main components:

### Contracts

1. **WearFitNft.sol**
    - **Description**: This contract implements an ERC721 NFT with minting and role-based access control.
    - **Key Features**:
        - Inherits from `ERC721`, `Ownable`, and `AccessControlEnumerable`.
        - Defines a `MINTER_ROLE` for minting new NFTs.
        - Provides functions to mint NFTs and manage minter roles.
        - Emits a `Mint` event upon successful minting.

2. **WearFitToken.sol**
    - **Description**: This contract implements an ERC20 token for the WearFit ecosystem.
    - **Key Features**:
        - Inherits from `ERC20`.
        - Mints an initial supply of tokens to the contract deployer.
### APK

The APK is the mobile Android application for the WearFit ecosystem.

## Web Information

- **Website**: [https://wearfit.ai](https://wearfit.ai)
- **X (formerly Twitter)**: [https://x.com/wearfit_ai/](https://x.com/wearfit_ai/)

## Getting Started

To get started with the WearFit project, you will need to have a basic understanding of Solidity and smart contract development. You can clone the repository and deploy the contracts using tools like Truffle or Hardhat.

