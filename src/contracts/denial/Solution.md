# Denial

This is pretty self explanatory, the contract you are calling can still perform a Denial of Service, in Deny.sol this is implemented with an infinite loop.

Note: An external CALL can use at most 63/64 of the gas currently available at the time of the CALL. Thus, depending on how much gas is required to complete a transaction, a transaction of sufficiently high gas (i.e. one such that 1/64 of the gas is capable of completing the remaining opcodes in the parent call) can be used to mitigate this particular attack.
