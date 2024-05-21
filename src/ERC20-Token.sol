// SPDX-License-Identifier: MIT

/** 
.·:'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''':·.
: :       :::::::::: :::::::::   ::::::::     ::::::::   ::::::: : :
: :      :+:        :+:    :+: :+:    :+:   :+:    :+: :+:   :+: : :
: :     +:+        +:+    +:+ +:+                +:+  +:+   +:+  : :
: :    +#++:++#   +#++:++#:  +#+              +#+    +#+   +:+   : :
: :   +#+        +#+    +#+ +#+             +#+      +#+   +#+   : :
: :  #+#        #+#    #+# #+#    #+#    #+#       #+#   #+#     : :
: : ########## ###    ###  ########    ##########  #######       : :
'·:..............................................................:·'    
*/

import '../lib/openzeppelin-contracts/contracts/access/Ownable.sol';
import '../lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol';

pragma solidity ^0.8.25;

contract ERC20Token is Ownable, ERC20{

    
    constructor(uint256 _amount) ERC20("AleksaPantic", "AP") Ownable(msg.sender) {
        _mint(owner(), _amount);
    }
    
    function mint(uint256 _amount)external onlyOwner{
        _mint(owner(), _amount);
    }
}
