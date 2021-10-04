pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
//import "@openzeppelin/contracts/access/Ownable.sol"; //https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract Staker {

  //event SetPurpose(address sender, string purpose);

  mapping (address => uint256) public balances;

  uint256 public constant THRESHOLD = 1 ether;

  constructor() {
    // what should we do on deploy?
  }

  function stake() public payable {
    balances[msg.sender] = balances[msg.sender] + msg.value;
  }
}
