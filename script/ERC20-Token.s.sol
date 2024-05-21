// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.25;

import {Script} from "forge-std/Script.sol";
import {ERC20Token} from "../src/ERC20-Token.sol";

contract DeployERC20Token is Script {
    function run(uint256 _amount) external returns (ERC20Token) {
        vm.startBroadcast();

        ERC20Token token= new ERC20Token(_amount);
        
        vm.stopBroadcast();
        return token;
    }
}