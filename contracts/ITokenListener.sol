// SPDX-License-Identifier: MIT

pragma solidity >=0.6.2;

import "./IERC165.sol";

/// @title An interface that allows a contract to listen to token mint, transfer and burn events.
interface ITokenListener is IERC165 {
  /// @notice Called when tokens are minted.
  /// @param to The address of the receiver of the minted tokens.
  /// @param amount The amount of tokens being minted
  /// @param token The address of the token that is being minted
  /// @param referrer The address that referred the minting.
  function beforeTokenMint(address to, uint256 amount, address token, address referrer) external;

  /// @notice Called when tokens are transferred or burned.
  /// @param from The address of the sender of the token transfer
  /// @param to The address of the receiver of the token transfer.  Will be the zero address if burning.
  /// @param amount The amount of tokens transferred
  /// @param token The address of the token that was transferred
  function beforeTokenTransfer(address from, address to, uint256 amount, address token) external;
}
