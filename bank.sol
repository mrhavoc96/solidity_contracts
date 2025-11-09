// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BankAccount {
    // Mapping to store the balance of each account holder
    mapping(address => uint256) private balances;

    // Deposit function - allows users to deposit Ether into their account
    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    // Withdraw function - allows users to withdraw Ether from their account
    function withdraw(uint256 amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }

    // Function to check the balance of the sender
    function getBalance() public view returns (uint256) {
        return balances[msg.sender];
    }
}
