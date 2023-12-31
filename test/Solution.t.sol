// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import {Utils} from "../src/utils/Utils.sol";
import {console2} from "forge-std/console2.sol";

/// @notice These tests are available to the player to use for debugging/deving their solution.
/// Any changes here do not have any effects outside this file so feel free to change as you like.
contract SolutionTest is Test, Utils {
    function setUp() public {}

    function testChallengeId() public {
        require(challengeId() != 0xff, "IMPORTANT: CREATOR to update challengeId!");
    }

    function testPlayerHandle() public {
        playerHandle();
    }

    function testGasReport() public {
        gasReport();
        console2.log(gasReport());
    }

    function testSolution() public {
        require(verify(), "Solution failed");
    }
}
