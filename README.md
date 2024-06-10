# ERC20 Token
```text
.·:'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''':·.
: :       :::::::::: :::::::::   ::::::::     ::::::::   ::::::: : :
: :      :+:        :+:    :+: :+:    :+:   :+:    :+: :+:   :+: : :
: :     +:+        +:+    +:+ +:+                +:+  +:+   +:+  : :
: :    +#++:++#   +#++:++#:  +#+              +#+    +#+   +:+   : :
: :   +#+        +#+    +#+ +#+             +#+      +#+   +#+   : :
: :  #+#        #+#    #+# #+#    #+#    #+#       #+#   #+#     : :
: : ########## ###    ###  ########    ##########  #######       : :
'·:..............................................................:·'    
```
## Table of Contents
~ [Requirements](#requirements)

~ [About](#about)

~ [Functionalities](#functionalities)

## <a name="requirements"></a>Requirements
To work with this repository, you need to fulfill the following requirements:

Install Foundry:
```
curl -L https://foundry.paradigm.xyz | bash
foundryup
```
Clone the HealthChain repository to your local machine using Git:
```
git clone https://github.com/10ap17/ERC20-Token.git
cd damn-vulnerable-defi-foundry
```
Ensure that you have all the required dependencies installed to run the tests. You can install dependencies by running:
```
forge install
```
To test, you can use the following command:
```
forge test
```
Ensure that you meet these requirements before proceeding with any operations or testing within the HealthChain project.

## <a name="about"></a>About
This repository contains a simple project demonstrating the implementation of an ERC-20 token on the Ethereum blockchain. The ERC-20 token standard defines a common set of rules and functionalities that any token on the Ethereum network should adhere to, enabling seamless interaction between tokens and applications.

ERC-20 is the most widely adopted token standard on Ethereum, which is defined by Ethereum Improvement Proposal 20 (EIP-20), facilitating interoperability between different tokens and platforms. This standard ensures that all ERC-20 tokens follow a consistent and predictable behavior, making them easy to integrate into various wallets, exchanges, and decentralized applications (dApps).

## <a name="functionalities"></a>Functionalities
The `ERC20Token` smart contract provides essential functionalities for managing a custom `ERC20` token named `"AleksaPantic" (AP)`. This contract includes core features such as `minting` and `ownership` control, leveraging `OpenZeppelin`'s robust libraries for enhanced security and standard compliance. Below are the key functionalities provided by the `ERC20Token` contract:

Upon deployment, the contract `mints` a specified initial amount of tokens to the `owner`. This ensures that the initial supply is controlled and managed by the contract `owner`.

```solidity
constructor(uint256 _amount) ERC20("AleksaPantic", "AP") Ownable(msg.sender) {
    _mint(owner(), _amount);
}
```
`constructor(uint256 _amount)`: Initializes the contract with a specified amount of tokens `minted` to the `owner`. The token is named `"AleksaPantic"` with the symbol `"AP"`. The `owner` is set using `OpenZeppelin`'s `Ownable` contract.

The contract `owner` can `mint` additional tokens as needed. This functionality allows for controlled inflation of the token supply, ensuring that only the `owner` has the ability to increase the total supply.

```solidity
function mint(uint256 _amount) external onlyOwner {
    _mint(owner(), _amount);
}
```
`mint(uint256 _amount)`: Allows the `owner` to `mint` new tokens. This function can only be called by the `owne`r of the contract, adding new tokens to the `owner`'s balance.

The contract uses `OpenZeppelin`'s `Ownable` module to manage ownership. This ensures that only the designated `owner` can perform sensitive operations such as minting new tokens.

```solidity
// Ownable module from OpenZeppelin
import '../lib/openzeppelin-contracts/contracts/access/Ownable.sol';
```
`Ownable`: The contract inherits from OpenZeppelin's Ownable contract, which provides functionality to manage contract ownership. This includes setting the initial `owner`, `transferring`ownership, and restricting access to certain functions to the `owner` only.