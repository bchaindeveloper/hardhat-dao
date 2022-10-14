// SPDX-License-Identifier: MIT
// Gives time for token holders to get out before the new proposal takes effect
pragma solidity 0.8.8;

import "@openzeppelin/contracts/governance/TimelockController.sol";

contract TimeLock is TimelockController {
    constructor(
        uint256 minDelay,
        address[] memory proposers,
        address[] memory executors
    ) TimelockController(minDelay, proposers, executors) {}
}