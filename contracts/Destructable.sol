pragma solidity ^0.4.15;

import "./Ownable.sol";

contract Destructable is Ownable {
    function kill() public onlyOwner {
        selfdestruct(msg.sender);
    }
}
