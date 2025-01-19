# Re-entrancy


The withdraw function is saving the state **after** calling our contract's code through `msg.sender.call{}()`, which can call the withdraw function again, allowing us to bypass the if statement and emptying the funds of the contract.

```sol
function withdraw(uint256 _amount) public {
    if (balances[msg.sender] >= _amount) {
        (bool result, ) = msg.sender.call{value: _amount}("");
        if (result) {
            _amount;
        }
        balances[msg.sender] -= _amount;
    }
}
```

This would have been fixed by simply modifying the state before calling our contract's code.
