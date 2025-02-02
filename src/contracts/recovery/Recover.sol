// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleToken.sol";

contract Recover {
    constructor(SimpleToken _simpleToken, address payable _originalContract) {
        _simpleToken.destroy(_originalContract);
    }
}
