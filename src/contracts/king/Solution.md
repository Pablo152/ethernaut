# King

Wasted so much time on this because there was something wrong with the deployed contract in Ethernaut, I just had to re-deploy the level :/

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