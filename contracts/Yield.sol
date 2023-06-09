// SPDX-License-Identifier: MIT
pragma solidity ^0.6.6;
import "@celo/contractkit/contracts/IERC20.sol";

contract YieldOptimizer {
    IERC20 celoToken;

    constructor(address _celoToken) public {
        celoToken = IERC20(_celoToken);
    }

    function deposit(uint amount) public {
        celoToken.transferFrom(msg.sender, address(this), amount);
        // Logic to stake in high-yield farm
    }

    function withdraw(uint amount) public {
        // Logic to withdraw from farm
        celoToken.transfer(msg.sender, amount);
    }
}