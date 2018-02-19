pragma solidity ^0.4.15;

contract Permittable {
    mapping(address => bool) permitted;

    function Permittable() public {
        permitted[msg.sender] = true;
    }

    modifier onlyPermitted() {
        require(permitted[msg.sender]);
        _;
    }

    function permit(address _address, bool _isAllowed) public onlyPermitted {
        permitted[_address] = _isAllowed;
    }

    function isPermitted(address _address) public view returns (bool) {
        return permitted[_address];
    }
}

