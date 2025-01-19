# Elevator

```sol
function goTo(uint256 _floor) public {
    Building building = Building(msg.sender);

    if (!building.isLastFloor(_floor)) {
        floor = _floor;
        top = building.isLastFloor(floor);
    }
}
```

This is extremely straightforward, just make a function that returns false on the first call and true on the second call

```sol
function isLastFloor(uint256) external returns (bool) {
    if (!called) {
        called = true;
        return false;
    }

    return true;
}
```