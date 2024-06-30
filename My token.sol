// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract MyToken
{
  string public tokenName = "MEGHA";
  string public tokenAbbrv = "MEG";
  uint public totalSupply =0;
  mapping (address=> uint)public balances;
  function mint(address _address, uint _value)public {
    totalSupply+= _value;
    balances[_address]+=_value;
  }
function burn(address _address, uint _value)public {
  if(balances[_address] >= _value)
  {
    totalSupply -= _value;
    balances[_address] -= _value;
  }
}
}
