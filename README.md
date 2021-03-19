# PoolTogether Token Listener Interface

The token listener interface allows contracts to 'listen' to token mints, transfers, and burns from some contracts.  The PoolTogether V3 Prize Pool expects it's Prize Strategy to implement the Token Listener Interface.  The PoolTogether V3 "Multiple Winners" Prize Strategy can also have a Token Listener attached to it; effectively chaining callbacks from the prize pool to the prize strategy.

# Token Listener Interface

The Token Listener Interface is defined in the [ITokenListener.sol](./contracts/ITokenListener.sol) file.  It inherits from the [IERC165](./contracts/IERC165.sol) so that it supports on-chain reflection. ERC165 support is required by some consumers of token listeners, such as the core PoolTogether V3 prize pool and the Multiple Winners prize strategy.

# Usage

You can depend on this package via NPM if you like:

```
$ yarn add @pooltogether/token-listener-interface
```

# Implementations

**Note: these implementations may or may not have been audited.**  They should be considered experimental until proven otherwise.

- [Multiple Winners Prize Strategy](https://github.com/pooltogether/pooltogether-pool-contracts/blob/f3c40ecacc654caa323f956f91e9851703a73111/contracts/yield-source/CTokenYieldSource.sol)
