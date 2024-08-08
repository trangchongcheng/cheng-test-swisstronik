// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TestToken is ERC20 {
    constructor(address recipient) ERC20("cheng", "CHENG") {
        _mint(recipient, 100 * 10 ** 18);
    }

    function mint100tokens() public {
        _mint(msg.sender, 100 * 10 ** 18);
    }

    function burn100tokens() public {
        _burn(msg.sender, 100 * 10 ** 18);
    }
}
