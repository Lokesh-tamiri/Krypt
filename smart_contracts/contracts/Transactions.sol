//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract Transactions {
    uint256 transactionsCount;

    event Transfer(
        address from,
        address to,
        uint256 amount,
        string message,
        uint256 timestamp,
        string keyword
    );

    struct TransferStruct {
        address sender;
        address receiver;
        uint256 amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    TransferStruct[] transactions;

    function getAllTransactions()
        public
        view
        returns (TransferStruct[] memory)
    {
        return transactions;
    }

    function getTransactionCount() public view returns (uint256) {
        return transactionsCount;
    }

    function addToBlockchain(
        address payable receiver,
        uint256 amount,
        string memory message,
        string memory keyword
    ) public {
        transactionsCount += 1;
        transactions.push(
            TransferStruct(
                msg.sender,
                receiver,
                amount,
                message,
                block.timestamp,
                keyword
            )
        );
    }
}
