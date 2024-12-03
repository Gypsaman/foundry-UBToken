//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {ERC20} from 'openzeppelin-contracts/contracts/token/ERC20/ERC20.sol';

contract UBToken is ERC20 {

    constructor(string memory name, string memory symbol, uint256 totalSupply) ERC20(name, symbol) {
        _mint(msg.sender, totalSupply);
    }

}