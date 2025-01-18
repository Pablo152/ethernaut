# Force

Make your own contract that receives ether and just "force" the contract to take ether by calling selfdestruct() to their address.

```sol
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Forced {
    receive() external payable {}

    function force() external {
        selfdestruct(payable(0x595dF62384c719DCaaD32aa0040FDF8fC51e7720));
    }
}
```
