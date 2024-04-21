// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract DegenToken is ERC20, Ownable, ERC20Burnable {

    string public redeemShop;
    uint256[] public itemCosts;

    constructor() ERC20("Degen", "DGN") {
    redeemShop = "There are 5 items in your shop which you are able to redeem: 1. Sword, 2. Knife, 3. Hammer";
    
}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function redeem(uint256 item_serial) public payable{
        
        if(item_serial < 0 && item_serial > 4){
            revert("only 3 items");
        }
        require(balanceOf(msg.sender) >= 10);
        _burn(msg.sender, (item_serial*2));
        }

    function checkBalance(address account) public view returns (uint256) {
        return balanceOf(account);
    }

    function transfer(address recipient, uint256 amount) public virtual override returns (bool) {
        _transfer(_msgSender(), recipient, amount);
        return true;
    }

    function burnAmount(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}
