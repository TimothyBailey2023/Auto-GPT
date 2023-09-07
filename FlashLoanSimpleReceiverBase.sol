// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {IFlashLoanSimpleReceiver} from './IFlashLoanReceiver.sol';
import {IPoolAddressesProvider} from './IPoolAddressesProvider.sol';
import {IPool} from './IPool.sol';

/**
 * @title FlashLoanSimpleReceiverBase
 * @author Aave
 * @notice Base contract to develop a flashloan-receiver contract.
 */
abstract contract FlashLoanSimpleReceiverBase is IFlashLoanSimpleReceiver {
  IPoolAddressesProvider public immutable override ADDRESSES_PROVIDER;
  IPool public immutable override POOL;

  constructor(IPoolAddressesProvider provider) {
    ADDRESSES_PROVIDER = provider;
    POOL = IPool(provider.getPool());
  }
}
