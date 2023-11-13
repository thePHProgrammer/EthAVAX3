// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts@4.9.0/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.9.0/access/Ownable.sol";

// Inherit from ERC20 and Ownable
contract MyToken is ERC20, Ownable {
    constructor(string memory _name, string memory _symbol, uint256 _initialSupply) ERC20(_name, _symbol) {
        _mint(msg.sender, _initialSupply);
    }

    // Function to mint new tokens
    function mint(address _to, uint256 _value) public onlyOwner {
        _mint(_to, _value); 
    }

    // Function to burn existing tokens
    function burn(uint256 _value) public  {
        _burn(msg.sender, _value);
    }
    function transfer(address _to, uint256 _value) public override returns (bool success) {
        _transfer(_msgSender(), _to, _value);
        return true;
    }
}
