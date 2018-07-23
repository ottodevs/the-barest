pragma solidity ^0.4.4;

import "@aragon/os/contracts/apps/AragonApp.sol";

contract App is AragonApp {
    function initialize(string _name) public onlyInit {
        initialized();
    }
}
