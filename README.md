# MyToken Solidity Smart Contract

## Overview

This Solidity smart contract is an implementation of the ERC-20 token standard with added minting and burning functionalities. It is designed to be managed by a single owner.

## Features

- **ERC-20 Standard:** Implements the ERC-20 standard for fungible tokens.
- **Minting:** Owner can mint new tokens.
- **Burning:** Token holders can burn their own tokens.

## Getting Started

1. Deploy the contract using Remix or your preferred Ethereum development environment.

2. Interact with the contract using the provided functions.


## Functions

- **`mint(address _to, uint256 _value)`**
  Mints new tokens and sends them to the specified address. Only the owner can call this function.

- **`burn(uint256 _value)`**
  Burns the specified amount of tokens, reducing the total supply. Any token holder can call this function.

- **`transfer(address _to, uint256 _value)`**
  Overrides the ERC-20 `transfer` function to add custom behavior.


