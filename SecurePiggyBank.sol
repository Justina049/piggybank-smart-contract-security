// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SecurePiggyBank {
    address public owner;

    event Deposit(address indexed sender, uint amount);
    event Withdraw(address indexed receiver, uint amount);

    constructor() {
        owner = msg.sender;
    }

    // Allow deposits into the contract
    function deposit() public payable {
        require(msg.value > 0, "Deposit must be greater than zero");
        emit Deposit(msg.sender, msg.value);
    }

    // Only owner can withdraw funds
    function withdraw() public {
        require(msg.sender == owner, "Only owner can withdraw");
        uint balance = address(this).balance;
        require(balance > 0, "No balance to withdraw");

        (bool sent, ) = payable(owner).call{value: balance}("");
        require(sent, "Withdraw failed");
        emit Withdraw(owner, balance);
    }

    // View contract balance
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}
