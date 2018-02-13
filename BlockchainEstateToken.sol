pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract BlockchainEstateToken is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function BlockchainEstateToken(address _owner)  UpgradeableToken(_owner) {
    name = "BlockchainEstateToken";
    symbol = "BET";
    totalSupply = 440000000000;
    decimals = 3;

    balances[_owner] = totalSupply;
  }
}