# King

Wasted a couple of hours on this because my original Regicide contract was using send() instead of call().

transfer() or send() will fial because of the limited 2300 gas. receive() of the King contract requires more than 2300 gas to execute successfully.

King.sol:
```sol
receive() external payable {
    require(msg.value >= prize || msg.sender == owner);
    payable(king).transfer(msg.value);
    king = msg.sender;
    prize = msg.value;
}
```

Breaking this is as easy as making the king a contract that cannot receive ether through transfer (no callback or receive functions).