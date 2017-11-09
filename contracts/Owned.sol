pragma solidity ^0.4.15;

contract Owned {
    address owner;

    function Owned() public {
        owner = msg.sender;
    }

    modifier onlyowner() {
        require(msg.sender == owner);
        _;
    }

    function setOwner(address newOwner) public onlyowner {
        owner = newOwner;
    }
}
