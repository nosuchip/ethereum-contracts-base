pragma solidity ^0.4.15;

import "./Ownable.sol";

contract Withdrawable is Ownable {
    function withdraw(address _to, uint256 _amount) public onlyOwner {
        require(_to != address(0));

        if (_amount == 0)
            _amount = address(this).balance;

        _to.transfer(_amount);
    }
}
