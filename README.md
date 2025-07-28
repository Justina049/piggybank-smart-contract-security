🏦 PiggyBank Smart Contract Security Audit
📌 Overview
This project demonstrates the identification and remediation of vulnerabilities in a simple PiggyBank smart contract.

The vulnerable contract (VulnerablePiggyBank.sol) is insecure because it allows anyone to withdraw funds.

The secure version (SecurePiggyBank.sol) fixes the issue by implementing access control and safe withdrawal mechanisms.

An attack contract (AttackPiggyBank.sol) demonstrates how the vulnerability can be exploited.


🔍 Vulnerability Identified
In VulnerablePiggyBank.sol:

❌ No access control on withdraw: Any user could call withdraw and drain the balance.

❌ Missing semicolon in constructor (syntax issue).

❌ No events for deposit/withdraw tracking.

✅ Fix Implemented in SecurePiggyBank.sol
Added owner-only restriction to withdraw.

Replaced transfer with low-level call and error checks.

Added deposit and withdraw events for transparency.

Added a function to view contract balance.

⚔️ Attack Demonstration
The AttackPiggyBank.sol contract shows how the withdraw function in the vulnerable contract can be exploited by anyone to drain funds.

🛠 Steps to Test in Remix
Open Remix IDE.

Create a contracts folder and add:

VulnerablePiggyBank.sol

SecurePiggyBank.sol

AttackPiggyBank.sol (optional for demo)

Compile each contract (Solidity ^0.8.0).

Deploy VulnerablePiggyBank and use deposit to add ETH.

Deploy AttackPiggyBank with the address of VulnerablePiggyBank.

Call attack() from AttackPiggyBank → All ETH drained.

Deploy SecurePiggyBank, deposit ETH, and test withdraw:

Only the owner can withdraw.

Attack fails.

📂 Project Structure

contracts/
 ├── VulnerablePiggyBank.sol
 ├── SecurePiggyBank.sol
 └── AttackPiggyBank.sol
README.md

🔑 Key Takeaways
Always implement access control on sensitive functions like withdraw.

Use events for better tracking of transactions.

Validate changes with attack simulations.

👨‍💻 Author
Developed as part of Week 2 Lecture 2 Smart Contract Security Assignment.

