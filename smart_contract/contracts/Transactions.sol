// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

contract Transactions {
    uint256 transactionCount;
    event Transfer(address from, address receiver, uint amount, uint256 timestamp, string message, string keyword);

    struct TransferStruct{
        address sender;
        address receiver;
        uint amount;
        uint256 timestamp;
        string message;
        string keyword;
    }

    TransferStruct[] transactions;

    function addToBloackchain(address payable receiver, uint amount, string memory message, string memory keyword) public {
        transactionCount += 1;
        transactions.push(TransferStruct(msg.sender, receiver, amount, block.timestamp, message, keyword ));

        emit Transfer(msg.sender, receiver, amount, block.timestamp, message, keyword);

    }

    function getAllTransactions() public view returns (TransferStruct[] memory) {

    }

    function getTransactionCount() public view returns (uint256) {
        
    }


}