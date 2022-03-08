// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

// importing openzeeplin implementation of ERC20 token
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";


// our contract TokenOne inherits ERC20 methods
contract TokenOne is ERC20{

    // constructor is used when deploying the contracts.
    constructor(string memory _name,string memory _symbol)
    ERC20(_name,_symbol)
    {
        
        //minting 1000 tokens
        // in order to mint a token, we need to pass it in as its smallest denomination form.
        // 1 token is equivalent to 10^18 smallest units. 

        _mint(msg.sender, 1000*(10**18));

        
    }
}