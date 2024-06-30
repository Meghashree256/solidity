# CREATE-A-TOKEN

The Solidity program is designed to implement Ethereum blockchain tokens via smart contracts, showcasing essential operations such as minting, burning, and tracking balances of addresses. It enables users to increase the total supply and assign tokens to particular addresses.

## DESCRIPTION

This Solidity program focuses on creating tokens on the Ethereum blockchain. It demonstrates fundamental token operations such as minting new tokens, burning existing ones, and tracking each address's balance. The contract stores details like the token's name, abbreviation, and total supply. Through the mint function, users can increase the total supply and allocate tokens to specific addresses, while the burn function allows for destroying existing tokens and deducting them from a designated address.

## Getting Started

### EXECUTING PROGRAM

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:

// SPDX-License-Identifier: MIT
    pragma solidity ^0.8.18;

     contract MyToken {
    //public variable here
    string public tokenName = "MEGHA";
    string public tokenAbbrv = "MEG";
    uint public totalSupply =0;

    

    // mapping variable here
    mapping (address => uint) public balances;

    // mint function
    function mint (address _address, uint _value) public {
        totalSupply += _value;
        balances[_address]+= _value;
    }

    // burn function
    function burn (address _address , uint _value) public {
        if (balances [_address]>= _value)
        {
            totalSupply -= _value;
            balances[_address]-= _value;
        }
    }

}


### EXPLAINATION OF CODE

* Your contract should include public variables to store the details about your coin (Token Name, Token Abbrv., Total Supply)
* It features a mapping of addresses to balances (address => uint).

* The contract has a mint function that takes an address and a value as parameters. This function increases the total supply by the specified amount and adds it to the balance of the given address.
* it also includes a burn function, which operates oppositely to the mint function. It accepts an address and a value, deducting the value from both the total supply and the address's balance.
* The burn function contains conditions to ensure that the account balance is greater than or equal to the amount to be burned.
## Help

  If you encounter any issues or have questions, please refer to the Solidity documentation for more information on
  Solidity language features and smart contract development.

## Author
  
  MEGHA SHREE @

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
  


   







