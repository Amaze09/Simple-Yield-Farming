// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PizzaToken is ERC20, Ownable {

    constructor() ERC20("PizzaToken", "PZA") {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
    
    function transferOwnership(address newOwner) public override onlyOwner {
        _transferOwnership(newOwner);
    }
}