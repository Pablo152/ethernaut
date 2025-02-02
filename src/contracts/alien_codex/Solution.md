# Alien Codex


formula to get an item in the array T[] v is:

```sol
keccak256(v's slot) + n
```

n is an index of an element in the array

and to get an array length, you need to access:

```
v's slot
```

Solidity function (helpful in chisel, etc)
``` sol
contract T { function to_idx(uint slot, uint idx) external returns (uint) { return uint(keccak256(abi.encode(slot))) + idx; } }
```