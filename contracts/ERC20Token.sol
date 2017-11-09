pragma solidity ^0.4.15;

// https://github.com/ethereum/EIPs/issues/20

contract ERC20Token {
    event Transfer(address indexed _from, address indexed _to, uint256 _amount);            //ddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
    event Approval(address indexed _owner, address indexed _recipient, uint256 _amount);    //8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925

    function totalSupply() public constant returns (uint256);
    function balanceOf(address _owner) public constant returns (uint256 balance);
    function transfer(address _to, uint256 _amount) public returns (bool success);
    function transferFrom(address _from, address _to, uint256 _amount) public returns (bool success);
    function approve(address _recipient, uint256 _amount) public returns (bool success);
    function allowance(address _owner, address _recipient) public constant returns (uint256 remaining);
}
