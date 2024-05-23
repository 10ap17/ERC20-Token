// SPDX-License-Identifier: GPL-3.0
pragma solidity^ 0.8.24;

import {Test} from "forge-std/Test.sol";
import {console} from "forge-std/console.sol";
import {ERC20Token} from "../src/ERC20-Token.sol";
import {DeployERC20Token} from "../script/ERC20-Token.s.sol";

contract TestERC20Token is Test {
    ERC20Token token;
    DeployERC20Token script;
    uint256 constant INITIAL_SUPPLY = 1000;
    uint256 constant AMOUTN_TO_MINT = 10;

    function setUp() public {
       token= new ERC20Token(INITIAL_SUPPLY);
       script = new DeployERC20Token();
    }

    function testInitialSupply()external view{
        assertEq(INITIAL_SUPPLY, token.totalSupply());
    }
    
    function testIfMintWorks()external{
        token.mint(AMOUTN_TO_MINT);
        assertEq(INITIAL_SUPPLY+AMOUTN_TO_MINT, token.totalSupply());
    }

    function testScript()external{
        address scriptTest= address(script.run(100));
        assertFalse(address(0) == scriptTest);
    }
}