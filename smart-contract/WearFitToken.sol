// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract WearFitToken is ERC20 {
    constructor() ERC20("WEARFIT", "WFT") public {
        _mint(_msgSender(), 10**9 * 10**18);
    }
}