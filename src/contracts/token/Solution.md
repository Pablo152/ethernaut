# Token

Overflows! Underflows!

```sol
function transfer(address _to, uint256 _value) public returns (bool) {
    require(balances[msg.sender] - _value >= 0);
    balances[msg.sender] -= _value;
    balances[_to] += _value;
    return true;
}
```

Use TokenHax as a middle contract to just add to our balances (msg.sender will be middle contract address),
set \_value to anything greater than 20 to bypass the require() as it triggers an underflow.
Enjoy your free coins! :D
