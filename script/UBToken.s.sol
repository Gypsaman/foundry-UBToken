//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Script,console} from 'forge-std/Script.sol';
import {UBToken} from '../src/UBToken.sol';

contract UBTokenDeploy is Script {

    UBToken ubtoken;
    address user = 0x9965507D1a55bcC2695C58ba16FB37d819B0A4dc;

    function run() public {

        vm.startBroadcast();
        ubtoken = new UBToken("University of Bridgeport Token","UBT",1000000 ether);
        ubtoken.transfer(user,100 ether);
        vm.stopBroadcast();


    }
}