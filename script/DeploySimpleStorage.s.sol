// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
  // 'run', the command that gets called when deploying the contract
  function run() external returns(SimpleStorage) {
    // VM is a special keyword in the forge standard library
    // Only works in Foundry
    // Send to RPC
    vm.startBroadcast();
    // Run the code

    // Send a transaction to create a new simple storage contract
    // 'new' keyword create a new contract
    SimpleStorage simpleStorage = new SimpleStorage();

    // ...
    vm.stopBroadcast();

    return simpleStorage;
  }
}

// .s.sol for Foundry convention
// forge STD stands for forage standard library